FROM ghcr.io/anomalyco/opencode:2.0.17@sha256:c826e9a43ca79e3d8ace7011e2e86db25bc5b68db0044b6eb8ab1d6e85538a5f

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
