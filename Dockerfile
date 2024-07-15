FROM alpine:latest

WORKDIR /app

ENV ADMIN_ID=""
ENV BOT_TOKEN=""

RUN apk add --no-cache ca-certificates libgcc &\
    wget https://github.com/iovxw/rssbot/releases/download/v2.0.0-alpha.12/rssbot-zh-x86_64-unknown-linux-musl-openssl -O rssbot

CMD rssbot --admin $ADMIN_ID $BOT_TOKEN
