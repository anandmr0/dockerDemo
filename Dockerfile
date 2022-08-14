# pull the official base node image
FROM node:current-alpine

# set wokring directory
WORKDIR /usr/src/app

# install app dependencies
COPY package.json ./

RUN npm install --silent

# add app
COPY . .

# Uses port which is used by the actual application
EXPOSE 3000

# start app
CMD ["npm", "start"]