#!/bin/bash

set -ex

sudo podman build .

STREAM="stable"
# as an installed binary:
coreos-installer download -s "${STREAM}" -p qemu -f qcow2.xz --decompress -C ~/.local/share/libvirt/images/
# or as a container:
sudo podman run --pull=always --rm -v $HOME/.local/share/libvirt/images/:/data -w /data quay.io/coreos/coreos-installer:release download -s "${STREAM}" -p qemu -f qcow2.xz --decompress

