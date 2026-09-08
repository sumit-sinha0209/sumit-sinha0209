#!/bin/bash

rm -rf .repo/local_manifests && \
git clone https://github.com/sumit-sinha0209/local_manifests -b guamp_Lineage-21 --depth 1 .repo/local_manifests && \
/opt/crave/resync.sh && \
source build/envsetup.sh && \
lunch lineage_guamp-ap2a-userdebug && \
mka bacon
