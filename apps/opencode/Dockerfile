FROM ghcr.io/anomalyco/opencode:2.0.20@sha256:0f1e21b39c84fbfeb974968bbb23daedbf0c1c79fd2ac573f22cae50a2ef602e

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
