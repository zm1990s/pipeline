FROM alpine:latest
WORKDIR /root/
COPY src ./
RUN apk add darkhttpd
CMD /bin/sh -c 'sed -i "s/demoapp/$HOSTNAME/" index.html && darkhttpd /root/'
