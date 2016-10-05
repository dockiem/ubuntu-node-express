FROM ubuntu
RUN apt-get update  
RUN apt-get -y install nodejs  
RUN apt-get -y install nodejs-legacy
RUN apt-get -y install npm
RUN npm install -g express-generator
RUN express mynodeapp
WORKDIR mynodeapp
RUN npm install
CMD [ "npm", "start" ]