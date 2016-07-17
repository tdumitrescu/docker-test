FROM node:argon

# app dir
FROM node:4.4.7

RUN useradd --user-group --create-home --shell /bin/false appuser &&\
  npm install --global npm@3.10.5

ENV HOME=/home/appuser

COPY package.json npm-shrinkwrap.json $HOME/app/
RUN chown -R appuser:appuser $HOME/*

USER appuser
WORKDIR $HOME/app
RUN npm install

CMD ["npm", "start"]
