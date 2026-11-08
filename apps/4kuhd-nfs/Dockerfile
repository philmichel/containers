FROM alpine:3.24@sha256:f59abe656b692d901e184be3445e084786602108599d2a51d229c0f5a48c71bf

LABEL org.opencontainers.image.source=https://github.com/philmichel/containers
LABEL org.opencontainers.image.description="Userspace NFSv3 server (unfs3 + rpcbind) that also answers MOUNT v1, for clients such as the OPPO UDP-203 that a kernel nfsd without NFSv2 rejects"

RUN apk add --no-cache rpcbind su-exec unfs3

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
