FROM jmervine/docker-ngxbox:latest
MAINTAINER Joshua Mervine <joshua@mervine.net>

ONBUILD COPY . /html/
EXPOSE 80 443

CMD [ "nginx", "-c", "/nginx.conf", "-g", "daemon off;" ]
