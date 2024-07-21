#!/bin/bash
cd external/f2fs-tools
git apply -v ../../device/huawei/potter/patches/0001-f2fs-tools-remove-CP_NAT_BITS_FLAG.patch
cd ../..
