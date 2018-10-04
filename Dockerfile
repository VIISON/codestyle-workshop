FROM node:9

WORKDIR /data
COPY * /data/
RUN npm install

EXPOSE 8080

CMD npm run start
