
FROM node:14 

LABEL version="1.0.0"

LABEL description="This is microservice app test with docker"

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install glob rimraf

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm",  "run", "start" ]