FROM alpine:3.24@sha256:c6b073f8e9e58d881f6ffba6ebf3b9ebd60b9e7d6e8337018c0e68bb5c356873

LABEL org.opencontainers.image.source=https://github.com/philmichel/containers
LABEL org.opencontainers.image.description="Userspace NFSv3 server (unfs3 + rpcbind) that also answers MOUNT v1, for clients such as the OPPO UDP-203 that a kernel nfsd without NFSv2 rejects"

RUN apk add --no-cache rpcbind su-exec unfs3

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
