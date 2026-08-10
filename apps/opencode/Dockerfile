FROM ghcr.io/anomalyco/opencode:1.18.16@sha256:531d22f561f1fbe9e644e630425ee6ac1e1903a0d612bd78cfbc5ce0e46097db

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
