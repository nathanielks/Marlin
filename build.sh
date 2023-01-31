#!/usr/bin/env bash

set -x

cp ../MarlinConfigs/config/Configuration.h Marlin/Configuration.h
cp ../MarlinConfigs/config/Configuration_adv.h Marlin/Configuration_adv.h
pio run -e STM32G0B1RE_btt
cp .pio/build/STM32G0B1RE_btt/firmware.bin /Volumes/NO\ NAME/firmware.bin && echo 'Copied to SD Card'
diskutil unmount /Volumes/NO\ NAME
