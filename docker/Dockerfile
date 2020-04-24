FROM node:12.16.1
USER $USER_NAME:$USER_GROUP

###
# Fix up npm global installation
# See https://docs.npmjs.com/getting-started/fixing-npm-permissions
RUN mkdir ~/.npm-global \
 && npm config set prefix '~/.npm-global' \
 && echo "export PATH=~/.npm-global/bin:$PATH" >> ~/.profile \
 && . ~/.profile

RUN apt-get update -qq && apt-get install
RUN mkdir /my-travel
WORKDIR /my-travel
COPY ./package*.json ./
RUN npm install
COPY ./ .

EXPOSE 3007

# Start the main process.
CMD [ "npm", "run", "start:dev" ]
