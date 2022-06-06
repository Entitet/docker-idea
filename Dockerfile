# IN YOUR OWN BRANCH
# (BASED ON MAIN?)

# CREATE A DOCKER FILE
# AND ADJUST HE dockerSettings.json FILE
# FOR YOUR NEEDS!
FROM node:16-buster

CMD npm install && npm run build && npm start