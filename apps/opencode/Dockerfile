FROM ghcr.io/anomalyco/opencode:1.18.18@sha256:f3e00f8e25500150373c817e24b13f2f08e2ccd4cafd53dc3ad4827d47863b6f

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
