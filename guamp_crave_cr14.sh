#!/bin/bash

rm -rf .repo/local_manifests && \
rm -rf .repo/manifests* .repo/manifest.xml && \
repo init -u https://github.com/crdroidandroid/android.git -b 14.0 --depth 1 --git-lfs --no-clone-bundle &&  \
git clone https://github.com/sumit-sinha0209/local_manifests -b guamp_crdroid-14 --depth 1 .repo/local_manifests && \
git clean -f -d -x --exclude=.repo && \
find . -maxdepth 3 -name ".git" -not -path "./.repo/*" -exec rm -rf {} + && \
repo sync -c -j$(nproc) --force-sync --no-clone-bundle --no-tags --prune && \
source build/envsetup.sh && \
brunch guamp
