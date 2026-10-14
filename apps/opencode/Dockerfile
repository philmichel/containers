FROM ghcr.io/anomalyco/opencode:2.0.29@sha256:02a049e0d69c5700cdeb3be02a2882a67de87117f1ed5305f6c5cc204a2f4dc6

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
