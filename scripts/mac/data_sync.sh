#!/bin/bash

#example usage
# get the data numbered by [1, 3, 5, 7, 9] from ~/lare/braids/d_periodic_bigger/Data 
# put it into ~/magneto/d_periodic_bigger/Data
# seq -s ' ' 1 2 10 | xargs data_sync.sh d_periodic_bigger

includefile="/tmp/include.tmp"
echo 'Storing include parameters in '$includefile
#clear include file
rm $includefile

# Need to break directory path in separate directories to include
IFS='/' read -ra dir <<< "$1"
for i in "${dir[@]}"; do
    # should add full path here
    printf $i'/\n' >> $includefile
done
echo 'Data/' >> "$includefile"
echo 'en.dat' >> "$includefile" # Auto include this file for the moment
# Include all the data files we want
for i in ${@:2}
do 
    dnum=$( printf '%04d.cfd' $i) 
    echo $dnum  >> $includefile
done

rsync -avz \
    --include-from=$includefile --exclude='*' --prune-empty-dirs daniel@magneto:~/lare/braids/ ~/magneto/

#rm -f $includefile

