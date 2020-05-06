# Dockerfile: DNS
# Version: 0.1
# Date: 04/05/2020

FROM ubuntu:latest
LABEL maintainer="Tiago Brito"
RUN apt update -y && apt upgrade -y
RUN apt install dnsmasq -y
RUN apt install nfs-kernel-server -y
RUN mkdir /tftp
EXPOSE     53/tcp 53/udp 67/udp
ENTRYPOINT [ "dnsmasq" ]
CMD        [ "--keep-in-foreground", \
             "--user=root" ]
