FROM alpine:latest
WORKDIR /root/
COPY src ./
RUN apk add --no-cache darkhttpd
CMD /bin/sh -c 'sed -i "s/demoapp/$HOSTNAME/" index.html && darkhttpd /root/'
