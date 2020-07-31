# stage 1 install main image
FROM node:10.16.9-alpine

WORKDIR /usr/app

COPY ./package.json ./
COPY . .

# stage 2 install application
RUN npm install

COPY . .

# stage 3 start application
CMD ["npm", "start"]