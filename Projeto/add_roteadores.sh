#!/bin/bash

#Gilson Gabriel Zozias de Santana

#RNP
for i in `seq 1 28`
do
	ip netns add r$i 
done

#EMBRATEL
for i in `seq 50 54`
do
	ip netns add r$i 
done

#INTERNET2
for i in `seq 70 73`
do
	ip netns add r$i 
done

#FN
ip netns add r99