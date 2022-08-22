FROM node:16

WORKDIR /app

# install dependencies.
COPY package.json .

RUN npm install