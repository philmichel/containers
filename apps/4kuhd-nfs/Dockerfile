FROM alpine:3.24@sha256:ce9e1e6d23f04a0b7593445a062a9fc73ed52f8260b9396f77a958295ad18ee7

LABEL org.opencontainers.image.source=https://github.com/philmichel/containers
LABEL org.opencontainers.image.description="Userspace NFSv3 server (unfs3 + rpcbind) that also answers MOUNT v1, for clients such as the OPPO UDP-203 that a kernel nfsd without NFSv2 rejects"

RUN apk add --no-cache rpcbind su-exec unfs3

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
