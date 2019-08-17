FROM alpine:3.7
RUN apk add --no-cache openssh bash
RUN mkdir ~/.ssh
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
