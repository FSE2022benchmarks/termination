#!/bin/bash
path='/home/ubuntu/tool/FSE_benchmark/loop' # this change
echo $path
path_save='/home/ubuntu/tool/result/2ls/loop' #this change
files=$(ls $path)
for filename in $files
do
runfile=$path/$filename
savefile=$path_save/$filename
echo timeout 900 ./2ls --graphml-witness witness.graphml --termination --64  $filename >> $savefile.txt
echo ' ' >> $savefile.txt
echo ' ' >> $savefile.txt
echo ------------------------------------------------------------------------------------------------------- >> $savefile.txt
echo ' ' >> $savefile.txt
echo ' ' >> $savefile.txt
echo 'testfile: '$filename >> $savefile.txt
time timeout 900 /home/ubuntu/tool/2ls/src/2ls/2ls --graphml-witness $finename.graphml --termination --64  $runfile >> $savefile.txt
echo ' ' >> $savefile.txt
echo finish $filename
done
