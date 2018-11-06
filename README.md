# shadowsocks-libev

## default

```sh
SERVER 0.0.0.0
PORT 80
METHOD      aes-256-gcm
PASSWORD    123456
TIMEOUT     300
DNS    8.8.8.8
```

## run

```sh
docker run --restart=always -itd -p 9000:8388 -p 9000:8388/udp -e "PASSWORD=123456" modules/shadowsocks-libev
```
