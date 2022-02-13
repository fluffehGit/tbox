FROM alpine:3.15.0

RUN     apk upgrade --update-cache  \
    &&  apk cache clean             \
    &&  apk add deluge

EXPOSE 58846

CMD ["deluged","-l","/var/log/deluged.log","-d"]
