FROM ghcr.io/anomalyco/opencode:1.18.15@sha256:59b2582fb5a10b7022d8b3347a9d9c60710d526ad6bfd02eb17a2c8582b35809

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
