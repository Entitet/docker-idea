## Why do we have this branch?

A rule of thumb for Docker is that a container should do one thing and do it well. Therefore we start a separate container for your database.

## Accessing the database
You can check your database through MongoDB Compass as your team is used to. The difference from before is that you want to start the container first. (Run the ```./start``` script.) The port you enter in MongoDB Compass is the same port as you have in your dockerSettings.json. You can also see which port the container runs on in Docker desktop.

## We changed the port and now the connection does not work

The connection is found in backend/dbConnect.js. The file is located in **capital-city-main**. The port in that file needs to correspond to the port specified in dockerSettings.json.