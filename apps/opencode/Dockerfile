FROM ghcr.io/anomalyco/opencode:1.18.17@sha256:c472d1c6c575b86ccc44ff639a1bb2093fd75ab7095be46f8b3c0a04c299fd60

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
