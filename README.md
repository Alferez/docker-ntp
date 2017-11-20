# docker-ntp
Docker Ntp Server

To build:
docker build -t alferez/ntp .

To Run:
docker run -d --restart=always --cap-add='SYS_TIME' --name ntpd -p 123:123/udp alferez/ntp



www.alferez.es
