#!/bin/bash

set -ex

sudo podman build .

osbuild-mpp -I . -D image_type="ostree" -D arch="aarch64" -D distro_name="silverblue-asahi" -D target="asahi" silverblue-asahi-container.mpp.yaml silverblue-asahi-container.aarch64.json

