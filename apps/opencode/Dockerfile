FROM ghcr.io/anomalyco/opencode:2.2.3@sha256:f2e3a27a8e850b50a60c50d577ff7b2d3b5bd6fe5ae3c61e94c533fb24462ffe

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
