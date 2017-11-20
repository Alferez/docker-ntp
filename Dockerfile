FROM debian:latest
MAINTAINER Jose A Alferez <correo@alferez.es>

RUN echo "Etc/UTC"  > /etc/timezone
RUN dpkg-reconfigure tzdata

RUN apt-get update; apt-get install -y --fix-missing ntp
COPY ./assets/ntp.conf /etc/ntp.conf

ENTRYPOINT ["ntpd"]
CMD ["-n" ,"-b", "-g", "-l", "stdout"]
