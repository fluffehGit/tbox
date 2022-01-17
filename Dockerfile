FROM alpine:3.15.0

RUN     apk update      \
    &&  apk upgrade     \
    &&  apk add deluge

CMD ["deluged","-l","/var/log/deluged.log","-d"]
