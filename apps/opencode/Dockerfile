FROM ghcr.io/anomalyco/opencode:1.18.27@sha256:91f9f1b8ac42c9feaa1de8d9404ffe83b3e6fc8a634d2eb1aa5ba1ad2569e0a3

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
