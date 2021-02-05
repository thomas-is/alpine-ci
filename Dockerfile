FROM alpine:3.12

RUN apk update && apk upgrade \
apk add ca-certificates openssh-client

RUN rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod 744 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
