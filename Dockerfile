FROM alpine:3.10

RUN apk add php7

WORKDIR /home

COPY . /home

CMD ["php", "-S", "0.0.0.0:8080", "-t", "/home"]