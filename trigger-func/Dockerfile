
FROM alpine:3.4

WORKDIR trigger-func

RUN apk update
RUN apk add nodejs
RUN npm init -y
RUN npm install express

COPY index.js .

EXPOSE 3000
CMD ["node", "index.js"]

