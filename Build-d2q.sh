#!/bin/bash

## Nusantara
#############################
make clean
ccache -M 50G
export USE_CCACHE=1
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
export NR_MAINTAINER=PizzaG
. build/envsetup.sh
lunch omni_d2q-eng
mka recoveryimage -j$(nproc --all)
echo
echo " Recovery Should Be Built"
echo ""
mv $OUT/recovery.img /media/pizzag/Android/Uploads/Recoveries/Nusantara_Recovery-d2q.img
mv $OUT/NR-d2q*.zip /media/pizzag/Android/Uploads/Recoveries/Nusantara_Recovery-d2q.zip
mv $OUT/recovery.tar /media/pizzag/Android/Uploads/Recoveries/Nusantara_Recovery-d2q.tar
cd /media/pizzag/Android/Recoveries/Nusantara/8
make clean
#############################
#############################

