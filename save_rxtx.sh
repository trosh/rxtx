#!/bin/sh
dt=1
rxf=/sys/class/net/enp7s0/statistics/rx_bytes
txf=/sys/class/net/enp7s0/statistics/tx_bytes
prevrx=$(cat $rxf)
prevtx=$(cat $txf)
while true
do
	sleep $dt
	nextrx=$(cat $rxf)
	nexttx=$(cat $txf)
	printf '%s\t%s\t%s\n' $(date +%s) $(((nextrx-prevrx)/dt)) $(((nexttx-prevtx)/dt)) >> /tmp/rxtx.dat
	prevrx=$nextrx
	prevtx=$nexttx
done
