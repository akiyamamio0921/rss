FROM alpine:latest

WORKDIR /app

ENV ADMIN_ID=""
ENV BOT_TOKEN=""

RUN apk add --no-cache ca-certificates && \
    wget https://github.com/iovxw/rssbot/releases/download/v2.0.0-alpha.12/rssbot-zh-aarch64-unknown-linux-musl -O rssbot && \
    chmod +x rssbot

CMD /app/rssbot --admin $ADMIN_ID $BOT_TOKEN
