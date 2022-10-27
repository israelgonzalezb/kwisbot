# syntax=docker/dockerfile:1

FROM node:16-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --production
RUN npm prune --production

COPY . .

ENV PORT=3333

EXPOSE 3333 

CMD ["npm", "run", "production"]
