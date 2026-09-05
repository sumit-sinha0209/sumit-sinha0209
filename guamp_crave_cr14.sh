#!/bin/bash

rm -rf .repo/local_manifests && \
repo init -u https://github.com/crdroidandroid/android.git -b 14.0 --depth="1" --git-lfs --no-clone-bundle &&  \
git clone https://github.com/sumit-sinha0209/local_manifests -b guamp_crdroid-14 --depth 1 .repo/local_manifests && \
/opt/crave/resync.sh && \
source build/envsetup.sh && \
lunch crdroid_guamp-ap2a-userdebug && \
brunch guamp
