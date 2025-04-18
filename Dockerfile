FROM node:23.11-alpine

WORKDIR /app

COPY package*.json .
COPY src.js .

RUN apk update && apk add --no-cache git
RUN apk add sudo
RUN sudo git config --system core.longpaths true

RUN npm install

CMD ["node", "src.js"]