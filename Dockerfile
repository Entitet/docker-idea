# We are keeping it simple and have chosen to run:
# - The official Docker image for Node.js
# - Version 16.15 as this is the latest LTS-version.
# - Bullseye, the current stable distribution of Debian
FROM node:16.15-bullseye

# The dev team wishes dev mode for Vite to be run.
CMD npm install && npm run dev