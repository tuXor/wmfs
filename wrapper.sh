#!/bin/sh
A="\\\\"
B="$A#1793d1$A"
W="$A#BEBEBE$A"

sed "s/CPU/"$B"CPU"$W"/;\
s/WIFI/"$B"WIFI"$W"/;\
s/VOL/"$B"VOL"$W"/;\
s/PKG/"$B"PKG"$W"/;\
s/LAN/"$B"LAN"$W"/"
