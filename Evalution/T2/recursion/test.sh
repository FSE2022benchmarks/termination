#!/bin/bash


cd bc_file
path='/home/ubuntu/tool/FSE_benchmark/recursion'
files=$(ls $path)
for filename in $files
do
basename=`basename $filename`
bbname=${basename%%.*}
/home/ubuntu/llvm3.4/llvm-3.4.src/llvm-3.4/build/bin/clang -Wall -Wextra -c -emit-llvm -O0 $path/$filename -o $bbname.bc

done

cd ..
cd t2_file
filess=$(ls ../bc_file)
for filename in $filess
do
basename=`basename $filename`
bbname=${basename%%.*}
/home/ubuntu/llvm2kittel/llvm2kittel-master/build/./llvm2kittel --dump-ll --no-slicing --eager-inline --t2 ../bc_file/$filename >> $bbname.t2
done
