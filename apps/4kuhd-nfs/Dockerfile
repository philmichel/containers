FROM alpine:3.24@sha256:294b683cb724975bec92580e1e685676bd4b50bda910ddb8c51d4cabeaec77e6

LABEL org.opencontainers.image.source=https://github.com/philmichel/containers
LABEL org.opencontainers.image.description="Userspace NFSv3 server (unfs3 + rpcbind) that also answers MOUNT v1, for clients such as the OPPO UDP-203 that a kernel nfsd without NFSv2 rejects"

RUN apk add --no-cache rpcbind su-exec unfs3

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
