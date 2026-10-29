FROM ghcr.io/anomalyco/opencode:2.2.2@sha256:7c8cd91b6055e39306fa9040b9abf4e7d2808b1fccfe2d0389e3f0cdc654a048

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
