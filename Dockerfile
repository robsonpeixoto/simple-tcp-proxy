FROM alpine:3.7

RUN apk add --no-cache socat

WORKDIR /app
COPY docker-entrypoint.sh .

ENTRYPOINT ["/app/docker-entrypoint.sh"]
