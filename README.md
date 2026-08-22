# containers

Customized container images for [home-ops](https://github.com/philmichel/home-ops),
following the [home-operations/containers](https://github.com/home-operations/containers)
pattern: one directory per app under `apps/`, image tags track the upstream version,
monthly scheduled rebuilds pick up base-image fixes, Renovate bumps the pinned
upstream versions (`FROM` lines and annotated `*_VERSION` envs).

Images live here only when upstream genuinely lacks something — prefer official images.

## Images

| Image                         | Upstream                     | Why                                       |
| ----------------------------- | ---------------------------- | ----------------------------------------- |
| `ghcr.io/philmichel/opencode` | `ghcr.io/anomalyco/opencode` | + git, git-lfs, gh, bash, curl, jq, yq    |
| `ghcr.io/philmichel/baikal`   | `sabre-io/Baikal` releases   | aalmenar/baikal-docker stopped updating   |

`apps/baikal` continues [aalmenar/baikal-docker](https://github.com/aalmenar/baikal-docker)
(itself a fork of [ckulka/baikal-docker](https://github.com/ckulka/baikal-docker), MIT —
license retained in `apps/baikal/LICENSE`): nginx + sury PHP + msmtp, with the Baikal
release zip baked in.
