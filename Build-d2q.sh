#!/bin/bash

## PitchBlack
#############################
make clean
ccache -M 50G
export USE_CCACHE=1
export ALLOW_MISSING_DEPENDENCIES=true
export LC_ALL=C
export PB_MAINTAINER=PizzaG
export PB_DISABLE_MIUI_SPECIFIC_FEATURES=1
export PB_VERSION=3
export PB_REMOVE_AAPT=1
export PB_CHECK_OVERWRITE_ATTEMPTS=1
. build/envsetup.sh
lunch omni_d2q-eng
mka recoveryimage
echo
echo " Recovery Should Be Built"
echo ""
mv $OUT/PBRP-d2q-3.1.0*.zip /media/pizzag/Android/Uploads/Recoveries/PitchBlack_Recovery-d2q.zip
mv $OUT/recovery.img /media/pizzag/Android/Uploads/Recoveries/PitchBlack_Recovery-d2q.img
mv $OUT/recovery.tar /media/pizzag/Android/Uploads/Recoveries/PitchBlack_Recovery-d2q.tar
cd /media/pizzag/Android/Recoveries/PitchBlack/9
make clean
#############################
#############################

