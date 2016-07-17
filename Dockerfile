FROM node:argon

# app dir
FROM node:4.4.7

RUN useradd --user-group --create-home --shell /bin/false appuser &&\
  npm install --global npm@3.10.5

ENV HOME=/home/appuser

USER appuser
WORKDIR $HOME/app
