FROM node:5.1.1
MAINTAINER John Kariuki <john.kariuki@andela.com>

#Remove node_modules package directory
RUN rm -rf node_modules && rm -rf public

# Create app directory
RUN mkdir -p /usr/src/project-abc

#Set app as default directory
WORKDIR /usr/src/project-abc

# Install app dependencies
COPY package.json /usr/src/project-abc/

RUN npm install --production

# Bundle app source
COPY . /usr/src/project-abc/

EXPOSE 8080

CMD [ "npm", "start" ]
