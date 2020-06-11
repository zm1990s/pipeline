FROM alpine:latest
WORKDIR /root/
RUN mkdir img && apk add --no-cache darkhttpd
COPY rancher-logo.svg favicon.png img/
COPY index.html ./
CMD /bin/sh -c 'sed -i "s/demoapp/$HOSTNAME/" index.html && darkhttpd /'
