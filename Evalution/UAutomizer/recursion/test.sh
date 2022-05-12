#!/bin/bash
path='/home/ubuntu/tool/FSE_benchmark/recursion'
echo $path
path_save='/home/ubuntu/tool/result/uau/recursion'
files=$(ls $path)
for filename in $files
do
runfile=$path/$filename
savefile=$path_save/$filename
echo timeout 900 ./Ultimate.py --spec termination.prp --file  $filename  --architecture 64bit >> $savefile.txt
echo ' ' >> $savefile.txt
echo ' ' >> $savefile.txt
echo ------------------------------------------------------------------------------------------------------- >> $savefile.txt
echo ' ' >> $savefile.txt
echo ' ' >> $savefile.txt
echo 'testfile: '$filename >> $savefile.txt
time timeout 900 /home/ubuntu/tool/uautomizer/UAutomizer-linux/Ultimate.py --spec termination.prp --file $runfile --full-output  --architecture 64bit >> $savefile.txt
echo ' ' >> $savefile.txt
echo finish $filename
done
