#!/bin/bash

set -e

export VENDOR=lge
export DEVICE=c50
./../../$VENDOR/msm8916-common/setup-makefiles.sh $@
