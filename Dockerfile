FROM node:current-alpine3.14
WORKDIR /app
COPY package*.json /app/
RUN npm ci
COPY . /app/
EXPOSE 8080
ENTRYPOINT npm start