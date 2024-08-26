FROM node:12-alpine3.14
RUN apk update && apk upgrade openssl
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "node", "app.js" ]
