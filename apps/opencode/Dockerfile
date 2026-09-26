FROM ghcr.io/anomalyco/opencode:2.0.18@sha256:aa0e5ac93543f24c99dfcc72a6ea7df335faec131dafc16f7607a2c7d3173d28

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
