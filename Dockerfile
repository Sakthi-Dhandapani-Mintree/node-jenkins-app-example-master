FROM node:8.10.0-alpine

# Setting working directory. All the path will be relative to WORKDIR
WORKDIR /usr/src/app

# Installing dependencies
COPY package*.json ./
RUN npm install

# Copying source files
COPY . .

# Building app
RUN npm run build

#RUN cd /usr/src/app && npm install --production

# Running the app
CMD [ "npm", "start" ]
