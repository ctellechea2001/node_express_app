FROM node:8
LABEL maintainer="Azure App Services Container Images <appsvc-images@microsoft.com>"

# Create app directory
WORKDIR /app

# Bundle app source
COPY . .

RUN npm i

EXPOSE 3000
CMD [ "npm", "start" ]
