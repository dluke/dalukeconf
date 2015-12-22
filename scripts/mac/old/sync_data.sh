#!/bin/bash
#take a list of numbers and a directory under /lare/braids and get the data
# ugly use of include.tmp file

dir=$1
echo $dir > include.tmp
for i in ${@:2}
do
    dnum=$( printf '%04d.cdf' $i)
    echo $dir$dnum
    echo $dir'Data/'$dnum >> include.tmp
done

echo '*/' >> include.tmp

rsync -avz --stats \
    --include=$1'Data'$ 
    --include='*/' --exclude='*' --prune-empty-dirs daniel@magneto:~/lare/braids/ ~/magneto/

#rm include.tmp
