# android_device_huawei_potter-SHRP

1- To initialize your local repository using the OMNIROM trees to build SHRP, use a command like this:

```
mkdir shrp
cd shrp
repo init -u https://github.com/SHRP/manifest.git -b v3_11.0
```

2- Then to sync up:

```
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
```

3- Put this folder on 
>/shrp/device/huawei/potter

4- Then to build for a device with recovery partition:
```
cd <source-dir>
. build/envsetup.sh
lunch twrp_potter-eng
mka recoveryimage
or

export ALLOW_MISSING_DEPENDENCIES=true; source build/envsetup.sh; lunch twrp_potter-eng; mka recoveryimage

```

5- The output dir
```
shrp/out/target/product/potter
```
