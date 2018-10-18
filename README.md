# shadowsocks-libev

# default

```
SERVER_ADDR 0.0.0.0
SERVER_PORT 80
METHOD      aes-256-gcm
PASSWORD    123456
TIMEOUT     300
DNS_ADDR    8.8.8.8
```

# run

```
docker run --restart=always -itd -p 9000:80 -e "PASSWORD=123456" modules/shadowsocks-libev
```

```
docker run --restart=always -itd -p 9000:80 -p 9000:80/udp -e "PASSWORD=123456" -e "METHOD=aes-256-gcm" modules/shadowsocks-libev
```
