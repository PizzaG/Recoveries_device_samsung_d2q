#!/bin/bash

## OrangeFox
#############################
make clean
ccache -M 50G
export USE_CCACHE=1
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
export OF_MAINTAINER=PizzaG
export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
export FOX_VERSION=0.1
export FOX_REMOVE_AAPT=1
export OF_CHECK_OVERWRITE_ATTEMPTS=1
. build/envsetup.sh
lunch omni_d2q-eng
mka recoveryimage
echo
echo " Recovery Should Be Built"
echo ""
mv $OUT/OrangeFox-*Unofficial-d2q.img /media/pizzag/Android/Uploads/Recoveries/OrangeFox_Recovery-d2q.img
mv $OUT/OrangeFox-*Unofficial-d2q.img.md5 /media/pizzag/Android/Uploads/Recoveries/OrangeFox_Recovery-d2q.img.md5
mv $OUT/OrangeFox-*Unofficial-d2q.img.tar /media/pizzag/Android/Uploads/Recoveries/OrangeFox_Recovery-d2q.tar
mv $OUT/OrangeFox-*Unofficial-d2q.zip /media/pizzag/Android/Uploads/Recoveries/OrangeFox_Recovery-d2q.zip
mv $OUT/OrangeFox-*Unofficial-d2q.zip.md5 /media/pizzag/Android/Uploads/Recoveries/OrangeFox_Recovery-d2q.zip.md5
cd /media/pizzag/Android/Recoveries/OrangeFox/9
make clean
#############################
#############################

