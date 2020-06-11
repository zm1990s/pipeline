FROM alpine:latest
WORKDIR /root/
COPY src/img src/index.html ./
RUN apk add --no-cache darkhttpd
CMD /bin/sh -c 'sed -i "s/demoapp/$HOSTNAME/" index.html && darkhttpd /root/'
