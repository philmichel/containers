# containers

Customized container images for [home-ops](https://github.com/philmichel/home-ops),
following the [home-operations/containers](https://github.com/home-operations/containers)
pattern: one directory per app under `apps/`, image tags track the upstream version,
weekly scheduled rebuilds pick up base-image fixes, Renovate bumps the `FROM` pins.

Images live here only when upstream genuinely lacks something — prefer official images.

## Images

| Image                         | Upstream                     | Why                                       |
| ----------------------------- | ---------------------------- | ----------------------------------------- |
| `ghcr.io/philmichel/opencode` | `ghcr.io/anomalyco/opencode` | + git, git-lfs, gh, bash, curl, jq, yq    |
