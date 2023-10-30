#!/bin/bash

set -ex

sudo podman build .

osbuild-mpp -I . -D image_type="ostree" -D arch="aarch64" silverblue-asahi-container.mpp.yaml

