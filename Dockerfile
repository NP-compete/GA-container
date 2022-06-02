FROM ubuntu:latest
RUN apt-get update -y
ENV DEBIAN_FRONTEND noninteractive
COPY packages.sh /mnt/packages.sh
RUN chmod +x /mnt/packages.sh
RUN bash /mnt/packages.sh
