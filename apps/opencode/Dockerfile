FROM ghcr.io/anomalyco/opencode:2.0.12@sha256:1d31e4803f76fb68d9d14d2e59a6f4258cafe30b0eee7e8f3a4ab067170d33c6

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
