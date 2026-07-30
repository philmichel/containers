FROM ghcr.io/anomalyco/opencode:1.18.9@sha256:f958f81ae08f5f9bf16e2bb3cd6e472b2ce6aa024a741c3e2dec1ed89ea69232

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
