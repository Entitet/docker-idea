# IN YOUR OWN BRANCH
# (BASED ON MAIN?)

# CREATE A DOCKER FILE
# AND ADJUST HE dockerSettings.json FILE
# FOR YOUR NEEDS!
FROM node:16
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "node", "server.js" ]
