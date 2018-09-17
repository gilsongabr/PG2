#!/bin/bash

#Gilson Gabriel Zozias de Santana

for i in `seq 1 28`
do
	ip netns exec r$i sh -c ./disable_rp.sh
done

for i in `seq 50 54`
do
	ip netns exec r$i sh -c ./disable_rp.sh
done

for i in `seq 70 73`
do
	ip netns exec r$i sh -c ./disable_rp.sh
done

ip netns exec r99 sh -c ./disable_rp.sh