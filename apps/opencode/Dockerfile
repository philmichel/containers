FROM ghcr.io/anomalyco/opencode:2.0.0@sha256:c714c5ca046223a782faac0a5fdd3971cf3a57f39bd45eaf7d1a8b82f37ad183

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
