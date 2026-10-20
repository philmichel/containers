FROM ghcr.io/anomalyco/opencode:2.1.1@sha256:4e5f11cde373ba76d868e9ba95ad3071dfac39b44f93a447104c2e6e98ffc06d

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
