# IN YOUR OWN BRANCH
# (BASED ON MAIN?)

# CREATE A DOCKER FILE
# AND ADJUST THE dockerSettings.json FILE
# FOR YOUR NEEDS!

FROM nginx

COPY . /usr/share/nginx/html
