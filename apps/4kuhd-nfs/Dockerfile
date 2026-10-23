FROM alpine:3.24@sha256:be2656061b536c1883c4034790e21d0a09c5aaaf51968b89368a3c0371ea2c9a

LABEL org.opencontainers.image.source=https://github.com/philmichel/containers
LABEL org.opencontainers.image.description="Userspace NFSv3 server (unfs3 + rpcbind) that also answers MOUNT v1, for clients such as the OPPO UDP-203 that a kernel nfsd without NFSv2 rejects"

RUN apk add --no-cache rpcbind su-exec unfs3

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
