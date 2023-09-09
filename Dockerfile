FROM node:10-alpine

#specify working directory for docker
WORKDIR /app

#copy package files into working directory
COPY package*.json /app/

# install required dependencies
RUN npm install

#copy all contents to working directory
COPY . /app/

EXPOSE 3000
#command to run express server
CMD node index.js

