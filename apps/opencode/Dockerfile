FROM ghcr.io/anomalyco/opencode:2.0.2@sha256:7bd0298ed48f7c95b0b75098be519ea354db7cc1bdf0e17a3b1a6df13b0e529d

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
