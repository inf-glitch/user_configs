#!/bin/bash

last=$(</sys/class/powercap/intel-rapl\:0/energy_uj)
while sleep 1
do
        x=$(</sys/class/powercap/intel-rapl\:0/energy_uj)
        # One joule per second is a watt.
        printf "%'d \u03bcW\n" $((x - last))
        last=$x
done
