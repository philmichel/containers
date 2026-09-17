FROM ghcr.io/anomalyco/opencode:2.0.7@sha256:b4cf2e2e1c9598dd5c4ca84fe17c18085017a56e4a03dc68e607b90c31c325b3

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
