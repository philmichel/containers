#!/bin/sh
set -eu
# Starts as root only because rpcbind refuses anything else; it binds :111
# and then drops itself to the rpc user. unfsd, the part that parses client
# requests, runs unprivileged via su-exec (-s = single-user mode).
# BIND_ADDR pins UDP replies to one address (e.g. a macvlan IP under
# source-based routing); unset = all addresses.
mkdir -p /run/rpcbind
rpcbind -f ${BIND_ADDR:+-h "$BIND_ADDR"} &
for _ in $(seq 20); do
  rpcinfo -p 127.0.0.1 >/dev/null 2>&1 && break
  sleep 0.5
done
exec su-exec "${UNFSD_UID:-1000}:${UNFSD_GID:-1000}" \
  unfsd -d -s -e "${EXPORTS_FILE:-/etc/exports}" ${BIND_ADDR:+-l "$BIND_ADDR"} "$@"
