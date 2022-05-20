#!/bin/bash

sudo bluetoothctl disconnect 9C:FC:28:2C:DB:0F; sudo bluetoothctl connect 9C:FC:28:2C:DB:0F; kill -44 $(pidof dwmblocks) &
