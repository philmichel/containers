FROM ghcr.io/anomalyco/opencode:2.1.0@sha256:527671cc9ac0ee7308ed5c6eef2f7270274a947d5d9d4e604a2d84439e8ec57a

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
