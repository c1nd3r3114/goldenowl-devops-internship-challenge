ARG NODE_VERSION=20.16.0

FROM node:${NODE_VERSION}-alpine

USER node

RUN mkdir /home/node/app
WORKDIR /home/node/app

COPY --chown=node:node . .

RUN npm i

EXPOSE 3000

CMD ["npm", "start"]