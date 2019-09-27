FROM node:8.10.0-alpine

RUN mkdir -p /usr/app/build
WORKDIR /usr/app

COPY ./build /usr/app/build
COPY ./package.json /usr/app/package.json

RUN cd /usr/app && npm install --production

EXPOSE 3000

CMD [ "npm", "run", "start" ]
