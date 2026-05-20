FROM alpine:latest

RUN apk add --no-cache curl git tar
RUN cd /etc/apk/keys && curl -JO https://codeberg.org/api/packages/agle/alpine/key 
RUN echo "https://codeberg.org/api/packages/agle/alpine/v3.20/aaports" >> /etc/apk/repositories && apk update
RUN apk add --no-cache opam2web
RUN mkdir /w
WORKDIR /w


