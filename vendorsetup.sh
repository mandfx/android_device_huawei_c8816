if [ ! -z "$OUT" ]
then
  sh device/huawei/c8816/patches/apply.sh
fi
add_lunch_combo cm_c8816-userdebug
