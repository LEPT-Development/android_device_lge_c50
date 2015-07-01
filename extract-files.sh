#!/bin/sh

set -e

export VENDOR=lge
export DEVICE=c50
./../../$VENDOR/msm8916-common/extract-files.sh $@
