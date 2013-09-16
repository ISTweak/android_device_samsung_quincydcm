#!/bin/sh

BASE=../../../vendor/samsung/quincydcm/proprietary
rm -rf $BASE/system

for FILE in `egrep -v '(^#|^$)' proprietary-files.txt`; do
  DIR=`dirname $FILE`
  if [ ! -d $BASE/system/$DIR ]; then
    mkdir -p $BASE/system/$DIR
  fi
  adb pull /system/$FILE $BASE/system/$FILE
done

adb pull /system/lib/hw/sensors.MSM8660_SURF.so $BASE/system/lib/hw/sensors.msm8660.so

./setup-makefiles.sh
