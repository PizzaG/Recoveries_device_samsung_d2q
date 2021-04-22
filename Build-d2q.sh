#!/bin/bash

## SkyHawk
#############################
make clean
ccache -M 50G
export USE_CCACHE=1
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
#export BR_MAINTAINER=PizzaG
. build/envsetup.sh
lunch omni_d2q-eng
mka recoveryimage
echo
echo " Recovery Should Be Built"
echo ""
mv $OUT/recovery.img /media/pizzag/Android/Uploads/Recoveries/SkyHawk_Recovery-d2q.img
mv $OUT/SHRP_v3.1_stable-Unofficial*.zip /media/pizzag/Android/Uploads/Recoveries/SkyHawk_Recovery-d2q.zip
mv $OUT/SHRP_AddonRescue_v3.1*.zip /media/pizzag/Android/Uploads/Recoveries/SkyHawk_AddonRescue-d2q.zip
mv $OUT/recovery.tar /media/pizzag/Android/Uploads/Recoveries/SkyHawk_Recovery-d2q.tar
cd /media/pizzag/Android/Recoveries/SkyHawk/9
make clean
#############################
#############################

