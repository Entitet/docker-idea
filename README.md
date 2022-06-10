## About your setup

Your container is modeled to run Node.js/Express backend and React with Vite as frontend. The LTS version 16.15 is specified as a tag. When there is a new LTS you can easily yourselves change this tag in your Dockerfile. 

If you would like to see how your Microservice behaves in the current version 18 you could create a feature-branch and change the tag in the Dockerfile. This is the wonderful simplicity containers give you, enjoy!

You have requested that your code is started with the command **npm run dev**, to enable you to see changes made in the code in real time (well, after a reload of the page) on the screen. Don't forget to alert your DevOps team if you wish this to be changed!