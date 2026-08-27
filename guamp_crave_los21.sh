#!/bin/bash

rm -rf .repo/local_manifests && \
# repo init -u https://github.com/LineageOS/android.git -b lineage-21 --git-lfs --depth 1 && \
git clone https://github.com/sumit-sinha0209/local_manifests -b guamp_Lineage-21 --depth 1 .repo/local_manifests && \
/opt/crave/resync.sh && \

source build/envsetup.sh && \
lunch lineage_guamp-ap2a-userdebug && \
# make installclean && \

if [ -n "$SELF_NAME" ]; then
  git clone "https://$SELF_NAME@://github.com/sumit-sinha0209/private" /device/motorola/guamp/keys/
else
  echo "FALLBACK 10120988272848248236874"
  export BOARD_AVB_KEY_PATH="external/avb/test/data/testkey_rsa2048.pem"
  export PRODUCT_DEFAULT_DEV_CERTIFICATE="build/target/product/security/testkey"
fi

mka bacon
