FROM ghcr.io/anomalyco/opencode:2.0.14@sha256:3876fd9e48109799ef5ce6186fb0a5d3775a8cefc05c0441c55a1dfc00096c2a

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
