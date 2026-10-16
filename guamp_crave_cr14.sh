#!/bin/bash

rm -rf .repo/local_manifests && \
repo init -u https://github.com/crdroidandroid/android.git -b 14.0 --depth 1 --git-lfs --force-sync --no-clone-bundle &&  \
git clone https://github.com/sumit-sinha0209/local_manifests -b guamp_crdroid-14 --depth 1 .repo/local_manifests && \
repo sync -c -j$(nproc) --force-sync --no-clone-bundle --clobber-rescue && \
source build/envsetup.sh && \
brunch guamp
