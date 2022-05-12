#!/bin/bash
path='/home/ubuntu/tool/FSE_benchmark/recursion' # this change
echo $path
path_save='/home/ubuntu/tool/result/Aprove/recursion' #this change
files=$(ls $path)
cd /home/ubuntu/tool/aprove/aprove
for filename in $files
do
runfile=$path/$filename
savefile=$path_save/$filename
echo timeout 900 ./AProVE.sh -m wst --bit-width 64  $filename >> $savefile.txt
echo ' ' >> $savefile.txt
echo ' ' >> $savefile.txt
echo ------------------------------------------------------------------------------------------------------- >> $savefile.txt
echo ' ' >> $savefile.txt
echo ' ' >> $savefile.txt
echo 'testfile: '$filename >> $savefile.txt
time timeout 900 ./AProVE.sh -m wst --bit-width 64  $runfile >> $savefile.txt
echo ' ' >> $savefile.txt
echo finish $filename
done
