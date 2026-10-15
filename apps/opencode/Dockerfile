FROM ghcr.io/anomalyco/opencode:2.0.30@sha256:42bd27687408a53669f97cc62e3419d4a6f4a6ad0d640d83ef290aaf5d9b2d18

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
