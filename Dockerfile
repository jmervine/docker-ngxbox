FROM progrium/busybox
MAINTAINER Joshua Mervine <joshua@mervine.net>

RUN \
  opkg-install nginx                           && \
  mkdir -p /var/log/nginx /var/lib/nginx       && \
  ln -sf /dev/stdout /var/log/nginx/access.log && \
  ln -sf /dev/stdout /var/log/nginx/error.log  && \
  ln -s /usr/html /html                        && \
  ln -s /etc/nginx/nginx.conf /nginx.conf

EXPOSE 80 443

CMD [ "nginx", "-c", "/nginx.conf", "-g", "daemon off;" ]
