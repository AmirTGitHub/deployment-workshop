FROM mhart/alpine-node:8

EXPOSE 2525

WORKDIR  /app

COPY . .

RUN npm install

CMD ["node", "index.js"]