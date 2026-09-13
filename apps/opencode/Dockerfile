FROM ghcr.io/anomalyco/opencode:2.0.3@sha256:aaf8c5420e10652c520e068532384f6e20cece2922c404db7f89e36720b9f212

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
