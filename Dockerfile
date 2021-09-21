
FROM node:14 

LABEL version="1.0.0"

LABEL description="This is microservice app test with docker"

WORKDIR /usr/src/app
COPY package*.json .gitignore ./
ENV HOST=0.0.0.0
ENV PORT=${PORT}
RUN npm ci --prefer-offline
RUN npm install glob rimraf
RUN npm install
COPY . .
EXPOSE 3000
CMD [ "npm",  "run", "start" ]

# Audit
FROM dev AS audit 
RUN npm audit 

#Build
FROM test AS build
RUN npm run build \
  && nom ci --prefer-offline --prod
  
  

 
