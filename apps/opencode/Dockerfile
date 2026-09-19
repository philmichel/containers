FROM ghcr.io/anomalyco/opencode:2.0.9@sha256:c1e3304e50bcf4e4919ca8035cca7e3f192ee74d01f026edd51126a2730d6ed6

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
