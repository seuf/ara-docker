FROM alpine

RUN apk --update add py2-pip libffi-dev gcc make linux-headers libc-dev python-dev openssl-dev && \
    pip install --upgrade pip && \
    pip install ara pymysql & \
    apk del libffi-dev gcc make linux-headers libc-dev python-dev openssl-dev && \
    rm -rf /var/cache/apk/*

EXPOSE 9191

CMD ara-manage runserver -h 0.0.0.0
