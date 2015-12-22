#!/bin/bash
rsync -avz --stats --include='*.png' --include='*/' --exclude='*' --prune-empty-dirs ~/magneto/ /Volumes/UUI/magneto/
