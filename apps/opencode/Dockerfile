FROM ghcr.io/anomalyco/opencode:2.1.4@sha256:6176a71bf7c1352d9aa9e7f112a4ef38443079a2f435789a33dd5ae809acea1a

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
