#!/bin/bash
Usage()
{
    echo "Param number must equal to 3. "
    echo "usage:replace_string.sh  string1 String2 filepath"
    exit 1
}
#DATE_STR=`date +%Y%m%d%H%M%S`
if [ $# -ne 3 ] ; then
   Usage
else
   #rsync -a "$3" "$3"_"$DATE_STR".bak
   echo $0 " , " $1 " , " $2 " , " $3
   sed -i "s|$1|$2|g"   "$3"
fi



