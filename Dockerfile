FROM docker.io/alpine:3.21.3

RUN apk add --no-cache libc6-compat
COPY --chmod=555 caddy /usr/bin/caddy

EXPOSE 80/tcp
EXPOSE 443/tcp
EXPOSE 443/udp

WORKDIR /data
CMD ["/usr/bin/caddy", "run", "--config", "/data/Caddyfile"]