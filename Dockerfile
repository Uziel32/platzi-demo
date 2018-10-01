FROM node:6.9
EXPOSE 3000

WORKDIR /App/docker

ADD package.json /App/docker/
RUN npm install

ADD . /App/docker

CMD ["node", "server.js"]
