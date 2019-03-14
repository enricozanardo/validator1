FROM node:11
WORKDIR /usr/src/app
COPY package.json /usr/src/app
COPY package-lock.json /usr/src/app
COPY privkey1.json /usr/src/app
COPY .env-node1 /usr/src/app
RUN npm install
COPY . /usr/src/app
EXPOSE 30090 30092
CMD  node node0.js
