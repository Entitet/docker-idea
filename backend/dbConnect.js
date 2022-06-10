const path = require('path');
const mongoose = require('mongoose');

// To configure the connection you need to enter the branch name for your database
// and the port specified in dockerSettings.json. Currently the database is located in
// the branch capital-city-database and runs on port 4003.
const connection = 'mongodb://capital-city-database:4003/capitals-db';

function dbConnectWithRetry() {
  return new Promise(res => {
    let connect = () => {
      mongoose.connect(connection, err => {
        console.log('Connection error to db, retrying in 1 second');
        err ? setTimeout(connect, 1000) : res();
      });
    };
    connect();
  });
}

module.exports = async function () {
  // Connect to the database
  await dbConnectWithRetry();

  // Define a model for a collection (the equivalent of a db table)
  const Capital = mongoose.model('Capital', {
    country: String,
    capital: String
  });

  // Populate the database if it hasn't been done yet
  async function populate() {
    let capitals = await Capital.find();
    if (capitals.length === 0) {
      let data = require(path.join(__dirname, 'data.json'));
      for (let [country, capital] of data) {
        const post = new Capital({ country, capital });
        await post.save();
      }
    }
  }
  await populate();

  // Return the database model(s)
  return { Capital };
}
