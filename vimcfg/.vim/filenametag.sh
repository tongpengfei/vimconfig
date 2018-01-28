#!/bin/sh
# generate tag file for lookupfile plugin

#find . -not -regex '.*\.\(png\|gif\)' -type f -printf "%f\t%p\t1\n" | \
#    sort -f >> filenametags 

#FP=/home/tpf/cpp
FP=/home/tpf/work/trunk/src/gameserver/src

find ${FP} -name "*.cpp" -type f -printf "%f\t%p\t1\n" > fff.tmp
find ${FP} -name "*.h" -type f -printf "%f\t%p\t1\n" >> fff.tmp
echo -e "!_TAG_FILE_SORTED\t2\t/2=foldcase/" > $FP/filenametags
cat fff.tmp | sort -f >> $FP/filenametags
rm fff.tmp
