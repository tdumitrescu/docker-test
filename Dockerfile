FROM node:argon

# app dir
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# src + deps
COPY package.json /usr/src/app
COPY src /usr/src/app/src
RUN npm install

EXPOSE 3000

CMD [ "npm", "start" ]
