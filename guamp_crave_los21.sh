rm -rf .repo/local_manifests && \
# repo init -u https://github.com/LineageOS/android.git -b lineage-21 --git-lfs --depth 1 && \
git clone https://github.com/sumit-sinha0209/local_manifests -b guamp_Lineage-21 --depth 1 .repo/local_manifests && \
/opt/crave/resync.sh && \

source build/envsetup.sh && \
lunch lineage_guamp-ap2a-userdebug && \
# make installclean && \
mka bacon
