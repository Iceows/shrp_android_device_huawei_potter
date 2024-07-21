# android_device_huawei_potter-SHRP

1- To initialize your local repository using the OMNIROM trees to build SHRP, use a command like this:

```
mkdir shrp
cd shrp
repo init -u https://github.com/SHRP/manifest.git -b v3_9.0
```

2- Then to sync up:

```
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
```

3- Clone this repo

```
git clone https://github.com/iceows/shrp_android_device_huawei_potter shrp/device/huawei/potter -b lineage-20.0
git clone https://github.com/iceows/android_vendor_omni vendor/omni -b android-9.0
```

4- Apply patches

```
cd <source-dir>
. apply/apply_patch.sh
```

5- Then to build for a device with recovery partition:
```
cd <source-dir>
. build/envsetup.sh
lunch omni_potter-eng
mka recoveryimage
or

export ALLOW_MISSING_DEPENDENCIES=true; source build/envsetup.sh; lunch omni_potter-eng; mka recoveryimage

```

6- The output dir
```
shrp/out/target/product/potter
```
