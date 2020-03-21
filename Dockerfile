FROM node:10
RUN apt-get update -qq && apt-get install
RUN mkdir /travel-app
WORKDIR /travel-app
COPY package.json /travel-app/package.json
COPY package-lock.json /travel-app/package-lock.json
RUN npm install
COPY . /myapp

EXPOSE 3000

# Start the main process.
CMD [ "npm", "run", "start:dev" ]
