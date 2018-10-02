FROM node:8.9.3-alpine
RUN mkdir -p /usr/src/app
# ENV HTTP_PROXY http:/ttp-proxy.corporate.ge.com:80
# ENV HTTPS_PROXY http://http-proxy.corporate.ge.com:80
COPY ./app/* /usr/src/app/
WORKDIR /usr/src/app
RUN npm install
CMD node /usr/src/app/index.js
