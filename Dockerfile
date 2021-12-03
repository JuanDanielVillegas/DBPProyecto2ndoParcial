FROM node:lts-alpine
MAINTAINER Daniel

RUN apk update

RUN apk add --no-cache bash

RUN apk add --no-cache nodejs

WORKDIR /pagina

COPY . .

EXPOSE 8888

CMD ["/usr/bin/node", "/pagina/app.js"]
