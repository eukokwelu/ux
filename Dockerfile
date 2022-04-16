FROM ubuntu:20.04
ARG DEBIAN_FRONTEND=noninteractive
LABEL description="Basic containerisation"
LABEL maintainer="eukokwelu = eukokwelu@yahoo.com"
RUN apt-get update && \
    apt-get install apache2 -y
WORKDIR /var/www/html/
COPY /web/index.html .
EXPOSE 80/tcp
ENTRYPOINT [ "apache2ctl", "-D", "FOREGROUND" ]

