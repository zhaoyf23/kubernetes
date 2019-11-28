#!/bin/bash
Usage()
{
    echo "Param number must equal to 5. "
    echo "usage:rsync_files.sh localDir remoteUser remotePasswd remoteIP remoteDir "
    exit 1
}

if [ $# -ne 5 ] ; then
   echo "Param number=" $#
   Usage
else
   echo $3 "," $1 "," $2 "," $4 "," $5
   echo " sshpass -p" $3  "rsync -a" $1 "," $2"@"$4:$5 
   sshpass -p $3  rsync -a $1  $2@$4:$5
fi