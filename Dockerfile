# We have chosen to use the MongoDB official image.
# This image categorises its tags as simple (for a single platform) or as shared (crossplatform). 
# For our project we feel a tag from the shared tags-list is most suitable. This might also be something
# to keep in mind if there is a need to change the tag in the future.
# We have chose version 5.0 as this is the current stable release of MongoDB.
FROM mongo:5.0

# Starting the mongo daemon on a port that is specified in dockerSettings.json.
# To be able to reach the database also from outside of the container bind_ip is needed.
# We don't know which ip is assigned inside the Docker network, therefor we use all.
CMD mongod --port=$PORT --bind_ip_all