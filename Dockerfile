FROM alpinelinux/darkhttpd
WORKDIR /root/
COPY rancher-logo.svg favicon.png img/
COPY index.html ./
CMD /bin/sh -c 'sed -i "s/demoapp/$HOSTNAME/" index.html && darkhttpd /'
