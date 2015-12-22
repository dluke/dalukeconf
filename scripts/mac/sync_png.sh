#!/bin/bash
rsync -avz  --stats --include='*.png' --include='*/' --exclude='*' --prune-empty-dirs daniel@magneto:~/lare/braids/ ~/magneto/ 
