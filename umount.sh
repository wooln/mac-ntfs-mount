#!/bin/bash

label=$1
echo '0.label: $label'

umount "/Users/wooln/Volumes/$label/"
echo '1.umounted $label'

rm -rf "/Users/wooln/Volumes/$label/"
echo '2.removed $label'
