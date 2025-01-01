ARG NODE_VERSION=20.16.0

FROM node:${NODE_VERSION}-alpine

# create a non-root user
USER node

# create source code directory
RUN mkdir /home/node/app
WORKDIR /home/node/app

# copy source code to the container
COPY --chown=node:node . .

# install dependencies
RUN npm i

#server start at port 3000
EXPOSE 3000

# start the server
CMD ["npm", "start"]