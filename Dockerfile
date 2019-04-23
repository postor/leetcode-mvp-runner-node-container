FROM node:10-alpine

COPY ./package.json /app/package.json

RUN yarn

COPY . /app

RUN chmod +x test.sh

CMD ./test.sh