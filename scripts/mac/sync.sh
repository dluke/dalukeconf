#!/bin/bash
rsync -avz --stats --include=$1 --include='*/' --exclude='*' --prune-empty-dirs daniel@magneto:~/lare/braids/ ~/magneto/
