#!/bin/bash
FIFO=~/tmp/your_variables
[ -e $FIFO ] && cat $FIFO > /dev/null || mkfifo $FIFO

# save number of variables that follow
NVARS=1
echo $NVARS > $FIFO
echo "DISPLAY=$(echo $DISPLAY)" > $FIFO
