# containers

Customized container images for [home-ops](https://github.com/philmichel/home-ops),
following the [home-operations/containers](https://github.com/home-operations/containers)
pattern: one directory per app under `apps/`, image tags track the upstream version,
monthly scheduled rebuilds pick up base-image fixes, Renovate bumps the pinned
upstream versions (`FROM` lines and annotated `*_VERSION` envs).

Images live here only when upstream genuinely lacks something — prefer official images.

## Images

| Image                          | Upstream                      | Why                                     |
| ------------------------------ | ----------------------------- | --------------------------------------- |
| `ghcr.io/philmichel/opencode`  | `ghcr.io/anomalyco/opencode`  | + git, git-lfs, gh, bash, curl, jq, yq  |
| `ghcr.io/philmichel/baikal`    | `sabre-io/Baikal` releases    | aalmenar/baikal-docker stopped updating |
| `ghcr.io/philmichel/4kuhd-nfs` | `alpine` + `unfs3`, `rpcbind` | answers MOUNT v1 (OPPO UDP-203)         |

`apps/baikal` continues [aalmenar/baikal-docker](https://github.com/aalmenar/baikal-docker)
(itself a fork of [ckulka/baikal-docker](https://github.com/ckulka/baikal-docker), MIT —
license retained in `apps/baikal/LICENSE`): nginx + sury PHP + msmtp, with the Baikal
release zip baked in.

`apps/4kuhd-nfs` is a userspace NFSv3 server (unfs3) whose mountd also answers MOUNT v1,
which the OPPO UDP-203 uses to list shares and which a kernel nfsd built without NFSv2
refuses. It starts as root only for rpcbind (which drops to `rpc` after binding :111);
unfsd runs as uid 1000 via su-exec. Expects `net.ipv4.ip_unprivileged_port_start=0` and
only `SETUID`/`SETGID` capabilities. Tagged with the Alpine version; Renovate bumps the
`FROM` and the monthly rebuild refreshes the apk packages.
