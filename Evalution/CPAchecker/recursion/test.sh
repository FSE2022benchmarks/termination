#!/bin/bash
path='/home/ubuntu/tool/FSE_benchmark/recursion' # this change
echo $path
path_save='/home/ubuntu/tool/result/cpachecker/recursion' #this change
files=$(ls $path)
for filename in $files
do
runfile=$path/$filename
savefile=$path_save/$filename
echo timeout 900 scripts/cpa.sh -preprocess -heap 10000M -stats -spec -config config/terminationAnalysisWithRecursion.properties -64  $filename >> $savefile.txt
echo ' ' >> $savefile.txt
echo ' ' >> $savefile.txt
echo ------------------------------------------------------------------------------------------------------- >> $savefile.txt
echo ' ' >> $savefile.txt
echo ' ' >> $savefile.txt
echo 'testfile: '$filename >> $savefile.txt
time timeout 900 /home/ubuntu/tool/CPAchecker-2.0-unix/scripts/cpa.sh -preprocess -heap 10000M -stats -config /home/ubuntu/tool/CPAchecker-2.0-unix/config/terminationAnalysisWithRecursion.properties  $runfile >> $savefile.txt
echo ' ' >> $savefile.txt
echo finish $filename
done
