FROM ghcr.io/anomalyco/opencode:1.18.20@sha256:bd10ebfa1c809f2d76d4cb8d662885fb386f74a8cac4d603c113a30c8d7250ca

LABEL org.opencontainers.image.source=https://github.com/philmichel/containers
LABEL org.opencontainers.image.description="opencode with git and a small agent toolbox"

# a coding agent that can actually commit: git + gh, plus the small
# tools an agent working on a GitOps repo reaches for constantly
RUN apk add --no-cache \
    bash \
    coreutils \
    curl \
    git \
    git-lfs \
    github-cli \
    jq \
    openssh-client \
    yq
