FROM ghcr.io/anomalyco/opencode:1.18.21@sha256:812493bdbfb3dc8c54b83c5095980c846ad58a60953ecc2dd2ad455e1dd0ff77

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
