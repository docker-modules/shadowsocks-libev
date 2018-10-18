FROM debian:stretch

LABEL maintainer="lomocc <constlomo@gmail.com>"

RUN set -ex \
	&& printf "deb http://deb.debian.org/debian stretch-backports main" > /etc/apt/sources.list.d/stretch-backports.list \
	&& apt-get update \
	&& apt-get -t stretch-backports install -y --no-install-recommends shadowsocks-libev simple-obfs \
	&& rm -rf /var/lib/apt/lists/*

USER nobody

ENV SERVER_ADDR 0.0.0.0
ENV SERVER_PORT 80
ENV METHOD      aes-256-gcm
ENV PASSWORD	123456
ENV TIMEOUT     300
ENV DNS_ADDR    8.8.8.8

EXPOSE $SERVER_PORT/tcp
EXPOSE $SERVER_PORT/udp

CMD ss-server -s "$SERVER_ADDR" \
              -p "$SERVER_PORT" \
              -m "$METHOD"      \
              -k "$PASSWORD"    \
              -t "$TIMEOUT"     \
              -d "$DNS_ADDR"    \
              -u                \
              --fast-open