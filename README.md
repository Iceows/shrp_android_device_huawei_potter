# android_device_huawei_potter-SHRP

1- To initialize your local repository using the P Smart 2019 trees to build SHRP-Reborn, use a command like this:

```
mkdir shrp-reborn
cd shrp-reborn
repo init -u https://github.com/SHRP-Reborn/manifest.git -b shrp-12.1
```

2- Then to sync up:

```
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
```

3- Put this folder on:

```
git clone https://github.com/iceows/shrp_android_device_huawei_potter device/huawei/potter -b android-12.1
```

4- Then to build for a device with recovery partition:

```
export ALLOW_MISSING_DEPENDENCIES=true; source build/envsetup.sh; lunch twrp_potter-eng; mka recoveryimage
```

6- The output dir
```
shrp/out/target/product/potter
```
