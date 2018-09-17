#!/bin/bash

#Gilson Gabriel Zozias de Santana
# AC
ip netns exec r1 ifconfig r1-0 10.0.1.1 netmask 255.255.255.192 up
ip netns exec r1 ifconfig lo up
ip netns exec r1 ip addr add 200.129.175.129/24 dev lo
ip netns exec r1 ip link set dev lo up
# RO
ip netns exec r2 ifconfig r2-0 10.0.1.2 netmask 255.255.255.192 up
ip netns exec r2 ifconfig lo up
ip netns exec r2 ifconfig r2-1 10.0.2.1 netmask 255.255.255.192 up
ip netns exec r2 ifconfig lo up
ip netns exec r2 ip addr add 200.129.139.132/24 dev lo
ip netns exec r2 ip link set dev lo up

# RS
ip netns exec r3 ifconfig r3-0 10.0.6.1 netmask 255.255.255.192 up
ip netns exec r3 ifconfig lo up
ip netns exec r3 ifconfig r3-1 10.0.7.1 netmask 255.255.255.192 up
ip netns exec r3 ifconfig lo up
#---------------BGP----------------
ip netns exec r3 ifconfig r3-6 90.0.2.2 netmask 255.255.255.192 up
ip netns exec r3 ifconfig lo up
#----------------------------------
ip netns exec r3 ifconfig r3-7 80.0.2.2 netmask 255.255.255.192 up
ip netns exec r3 ifconfig lo up

ip netns exec r3 ip addr add 200.132.0.134/24 dev lo
ip netns exec r3 ip link set dev lo up

# SC
ip netns exec r4 ifconfig r4-0 10.0.7.2 netmask 255.255.255.192 up
ip netns exec r4 ifconfig lo up
ip netns exec r4 ifconfig r4-1 10.0.8.1 netmask 255.255.255.192 up
ip netns exec r4 ifconfig lo up
ip netns exec r4 ip addr add 200.237.192.33/18 dev lo
ip netns exec r4 ip link set dev lo up

# MT
ip netns exec r5 ifconfig r5-0 10.0.2.2 netmask 255.255.255.192 up
ip netns exec r5 ifconfig lo up
ip netns exec r5 ifconfig r5-1 10.0.3.1 netmask 255.255.255.192 up
ip netns exec r5 ifconfig lo up
ip netns exec r5 ifconfig r5-2 10.0.4.1 netmask 255.255.255.192 up
ip netns exec r5 ifconfig lo up
ip netns exec r5 ip addr add 200.129.240.1/24 dev lo
ip netns exec r5 ip link set dev lo up

# MS
ip netns exec r6 ifconfig r6-0 10.0.3.2 netmask 255.255.255.192 up
ip netns exec r6 ifconfig lo up
ip netns exec r6 ifconfig r6-1 10.0.5.1 netmask 255.255.255.192 up
ip netns exec r6 ifconfig lo up
ip netns exec r6 ip addr add 200.129.207.44/24 dev lo
ip netns exec r6 ip link set dev lo up

# PR
ip netns exec r7 ifconfig r7-0 10.0.5.2 netmask 255.255.255.192 up
ip netns exec r7 ifconfig lo up
ip netns exec r7 ifconfig r7-1 10.0.6.2 netmask 255.255.255.192 up
ip netns exec r7 ifconfig lo up
ip netns exec r7 ifconfig r7-2 10.0.9.1 netmask 255.255.255.192 up
ip netns exec r7 ifconfig lo up
ip netns exec r7 ip addr add 200.238.130.8/24 dev lo
ip netns exec r7 ip link set dev lo up

# SP
ip netns exec r8 ifconfig r8-0 10.0.8.2 netmask 255.255.255.192 up
ip netns exec r8 ifconfig lo up
ip netns exec r8 ifconfig r8-1 10.0.9.2 netmask 255.255.255.192 up
ip netns exec r8 ifconfig lo up
ip netns exec r8 ifconfig r8-2 10.0.10.1 netmask 255.255.255.192 up
ip netns exec r8 ifconfig lo up
ip netns exec r8 ifconfig r8-3 10.0.11.1 netmask 255.255.255.192 up
ip netns exec r8 ifconfig lo up
ip netns exec r8 ifconfig r8-4 10.0.12.1 netmask 255.255.255.192 up
ip netns exec r8 ifconfig lo up
ip netns exec r8 ifconfig r8-5 10.0.60.1 netmask 255.255.255.192 up
ip netns exec r8 ifconfig lo up
#----------------_BGP--------------------
ip netns exec r8 ifconfig r8-6 90.0.1.2 netmask 255.255.255.192 up
ip netns exec r8 ifconfig lo up
ip netns exec r8 ifconfig r8-7 80.0.1.2 netmask 255.255.255.192 up
ip netns exec r8 ifconfig lo up

ip netns exec r8 ip addr add 200.133.192.80/24 dev lo
ip netns exec r8 ip link set dev lo up

# GO
ip netns exec r9 ifconfig r9-0 10.0.4.2 netmask 255.255.255.192 up
ip netns exec r9 ifconfig lo up
ip netns exec r9 ifconfig r9-1 10.0.13.1 netmask 255.255.255.192 up
ip netns exec r9 ifconfig lo up
ip netns exec r9 ifconfig r9-2 10.0.14.1 netmask 255.255.255.192 up
ip netns exec r9 ifconfig lo up
ip netns exec r9 ip addr add 200.18.160.3/18 dev lo
ip netns exec r9 ip link set dev lo up

# TO
ip netns exec r10 ifconfig r10-0 10.0.13.2 netmask 255.255.255.192 up
ip netns exec r10 ifconfig lo up
ip netns exec r10 ifconfig r10-1 10.0.15.1 netmask 255.255.255.192 up
ip netns exec r10 ifconfig lo up
ip netns exec r10 ip addr add 200.139.26.17/18 dev lo
ip netns exec r10 ip link set dev lo up

# DF
ip netns exec r11 ifconfig r11-0 10.0.14.2 netmask 255.255.255.192 up
ip netns exec r11 ifconfig lo up
ip netns exec r11 ifconfig r11-1 10.0.16.1 netmask 255.255.255.192 up
ip netns exec r11 ifconfig lo up
ip netns exec r11 ifconfig r11-2 10.0.17.1 netmask 255.255.255.192 up
ip netns exec r11 ifconfig lo up
ip netns exec r11 ifconfig r11-3 10.0.18.1 netmask 255.255.255.192 up
ip netns exec r11 ifconfig lo up
ip netns exec r11 ifconfig r11-4 10.0.19.1 netmask 255.255.255.192 up
ip netns exec r11 ifconfig lo up
ip netns exec r11 ifconfig r11-5 10.0.60.2 netmask 255.255.255.192 up
ip netns exec r11 ifconfig lo up
#--------------BGP-----------------
ip netns exec r11 ifconfig r11-6 90.0.4.2 netmask 255.255.255.192 up
ip netns exec r11 ifconfig lo up
#----------------------------------
ip netns exec r11 ip addr add 200.19.119.125/20 dev lo
ip netns exec r11 ip link set dev lo up

# RJ
ip netns exec r12 ifconfig r12-0 10.0.16.2 netmask 255.255.255.192 up
ip netns exec r12 ifconfig lo up
ip netns exec r12 ifconfig r12-1 10.0.10.2 netmask 255.255.255.192 up
ip netns exec r12 ifconfig lo up
ip netns exec r12 ifconfig r12-2 10.0.21.1 netmask 255.255.255.192 up
ip netns exec r12 ifconfig lo up
ip netns exec r12 ifconfig r12-3 10.0.20.1 netmask 255.255.255.192 up
ip netns exec r12 ifconfig lo up
ip netns exec r12 ip addr add 200.143.193.3/24 dev lo
ip netns exec r12 ip link set dev lo up

# RR
ip netns exec r13 ifconfig r13-0 10.0.22.1 netmask 255.255.255.192 up
ip netns exec r13 ifconfig lo up
ip netns exec r13 ip addr add 200.129.143.4/24 dev lo
ip netns exec r13 ip link set dev lo up

# AM
ip netns exec r14 ifconfig r14-0 10.0.17.2 netmask 255.255.255.192 up
ip netns exec r14 ifconfig lo up
ip netns exec r14 ifconfig r14-1 10.0.23.1 netmask 255.255.255.192 up
ip netns exec r14 ifconfig lo up
ip netns exec r14 ifconfig r14-2 10.0.22.2 netmask 255.255.255.192 up
ip netns exec r14 ifconfig lo up
ip netns exec r14 ip addr add 200.129.156.1/24 dev lo
ip netns exec r14 ip link set dev lo up

# BA
ip netns exec r15 ifconfig r15-0 10.0.25.1 netmask 255.255.255.192 up
ip netns exec r15 ifconfig lo up
ip netns exec r15 ifconfig r15-1 10.0.24.1 netmask 255.255.255.192 up
ip netns exec r15 ifconfig lo up
ip netns exec r15 ifconfig r15-2 10.0.27.1 netmask 255.255.255.192 up
ip netns exec r15 ifconfig lo up
ip netns exec r15 ifconfig r15-3 10.0.26.1 netmask 255.255.255.192 up
ip netns exec r15 ifconfig lo up
ip netns exec r15 ip addr add 200.128.0.18/24 dev lo
ip netns exec r15 ip link set dev lo up

# ES
ip netns exec r16 ifconfig r16-0 10.0.21.2 netmask 255.255.255.192 up
ip netns exec r16 ifconfig lo up
ip netns exec r16 ifconfig r16-1 10.0.25.2 netmask 255.255.255.192 up
ip netns exec r16 ifconfig lo up
ip netns exec r16 ip addr add 200.137.85.164/22 dev lo
ip netns exec r16 ip link set dev lo up

# MG
ip netns exec r17 ifconfig r17-0 10.0.19.2 netmask 255.255.255.192 up
ip netns exec r17 ifconfig lo up
ip netns exec r17 ifconfig r17-1 10.0.11.2 netmask 255.255.255.192 up
ip netns exec r17 ifconfig lo up
ip netns exec r17 ifconfig r17-2 10.0.28.1 netmask 255.255.255.192 up
ip netns exec r17 ifconfig lo up
ip netns exec r17 ifconfig r17-3 10.0.24.2 netmask 255.255.255.192 up
ip netns exec r17 ifconfig lo up
ip netns exec r17 ifconfig r17-4 10.0.20.2 netmask 255.255.255.192 up
ip netns exec r17 ifconfig lo up
ip netns exec r17 ip addr add 200.131.1.75/24 dev lo
ip netns exec r17 ip link set dev lo up

# SE
ip netns exec r18 ifconfig r18-0 10.0.26.2 netmask 255.255.255.192 up
ip netns exec r18 ifconfig lo up
ip netns exec r18 ifconfig r18-1 10.0.29.1 netmask 255.255.255.192 up
ip netns exec r18 ifconfig lo up
ip netns exec r18 ip addr add 200.17.118.9/24 dev lo
ip netns exec r18 ip link set dev lo up

# AP
ip netns exec r19 ifconfig r19-0 10.0.30.1 netmask 255.255.255.192 up
ip netns exec r19 ifconfig lo up
ip netns exec r19 ip addr add 200.129.167.34/24 dev lo
ip netns exec r19 ip link set dev lo up

# AL
ip netns exec r20 ifconfig r20-0 10.0.31.1 netmask 255.255.255.192 up
ip netns exec r20 ifconfig lo up
ip netns exec r20 ifconfig r20-1 10.0.29.2 netmask 255.255.255.192 up
ip netns exec r20 ifconfig lo up
ip netns exec r20 ip addr add 200.17.116.100/24 dev lo
ip netns exec r20 ip link set dev lo up

# CE
ip netns exec r21 ifconfig r21-0 10.0.12.2 netmask 255.255.255.192 up
ip netns exec r21 ifconfig lo up
ip netns exec r21 ifconfig r21-1 10.0.28.2 netmask 255.255.255.192 up
ip netns exec r21 ifconfig lo up
ip netns exec r21 ifconfig r21-2 10.0.18.2 netmask 255.255.255.192 up
ip netns exec r21 ifconfig lo up
ip netns exec r21 ifconfig r21-3 10.0.32.1 netmask 255.255.255.192 up
ip netns exec r21 ifconfig lo up
ip netns exec r21 ifconfig r21-4 10.0.33.1 netmask 255.255.255.192 up
ip netns exec r21 ifconfig lo up
ip netns exec r21 ifconfig r21-5 10.0.34.1 netmask 255.255.255.192 up
ip netns exec r21 ifconfig lo up
#---------------------BGP------------------
ip netns exec r21 ifconfig r21-6 90.0.3.2 netmask 255.255.255.192 up
ip netns exec r21 ifconfig lo up
#------------------------------------------
ip netns exec r21 ifconfig r21-7 80.0.3.2 netmask 255.255.255.192 up
ip netns exec r21 ifconfig lo up

ip netns exec r21 ip addr add 200.129.0.42/24 dev lo
ip netns exec r21 ip link set dev lo up

# MA
ip netns exec r22 ifconfig r22-0 10.0.35.1 netmask 255.255.255.192 up
ip netns exec r22 ifconfig lo up
ip netns exec r22 ifconfig r22-1 10.0.34.2 netmask 255.255.255.192 up
ip netns exec r22 ifconfig lo up
ip netns exec r22 ip addr add 200.137.129.135/24 dev lo
ip netns exec r22 ip link set dev lo up

# PA
ip netns exec r23 ifconfig r23-0 10.0.36.1 netmask 255.255.255.192 up
ip netns exec r23 ifconfig lo up
ip netns exec r23 ifconfig r23-1 10.0.30.2 netmask 255.255.255.192 up
ip netns exec r23 ifconfig lo up
ip netns exec r23 ifconfig r23-2 10.0.35.2 netmask 255.255.255.192 up
ip netns exec r23 ifconfig lo up
ip netns exec r23 ifconfig r23-3 10.0.23.2 netmask 255.255.255.192 up
ip netns exec r23 ifconfig lo up
ip netns exec r23 ifconfig r23-4 10.0.15.2 netmask 255.255.255.192 up
ip netns exec r23 ifconfig lo up
ip netns exec r23 ip addr add 200.129.132.98/24 dev lo
ip netns exec r23 ip link set dev lo up

# PI
ip netns exec r24 ifconfig r24-0 10.0.37.1 netmask 255.255.255.192 up
ip netns exec r24 ifconfig lo up
ip netns exec r24 ifconfig r24-1 10.0.36.2 netmask 255.255.255.192 up
ip netns exec r24 ifconfig lo up
ip netns exec r24 ip addr add 200.137.160.130/24 dev lo
ip netns exec r24 ip link set dev lo up

# PE
ip netns exec r25 ifconfig r25-0 10.0.33.2 netmask 255.255.255.192 up
ip netns exec r25 ifconfig lo up
ip netns exec r25 ifconfig r25-1 10.0.38.1 netmask 255.255.255.192 up
ip netns exec r25 ifconfig lo up
ip netns exec r25 ifconfig r25-2 10.0.37.2 netmask 255.255.255.192 up
ip netns exec r25 ifconfig lo up
ip netns exec r25 ifconfig r25-3 10.0.31.2 netmask 255.255.255.192 up
ip netns exec r25 ifconfig lo up
ip netns exec r25 ifconfig r25-4 10.0.27.2 netmask 255.255.255.192 up
ip netns exec r25 ifconfig lo up
ip netns exec r25 ip addr add 200.133.0.140/24 dev lo
ip netns exec r25 ip link set dev lo up

# RN
ip netns exec r26 ifconfig r26-0 10.0.32.2 netmask 255.255.255.192 up
ip netns exec r26 ifconfig lo up
ip netns exec r26 ifconfig r26-1 10.0.39.1 netmask 255.255.255.192 up
ip netns exec r26 ifconfig lo up
ip netns exec r26 ip addr add 200.137.0.40/24 dev lo
ip netns exec r26 ip link set dev lo up

# PB_JPA
ip netns exec r27 ifconfig r27-0 10.0.39.2 netmask 255.255.255.192 up
ip netns exec r27 ifconfig lo up
ip netns exec r27 ifconfig r27-1 10.0.40.1 netmask 255.255.255.192 up
ip netns exec r27 ifconfig lo up
ip netns exec r27 ip addr add 200.129.64.141/24 dev lo
ip netns exec r27 ip link set dev lo up

# PB_CGE
ip netns exec r28 ifconfig r28-0 10.0.38.2 netmask 255.255.255.192 up
ip netns exec r28 ifconfig lo up
ip netns exec r28 ifconfig r28-1 10.0.40.2 netmask 255.255.255.192 up
ip netns exec r28 ifconfig lo up
ip netns exec r28 ip addr add 200.129.64.144/24 dev lo
ip netns exec r28 ip link set dev lo up

#EMBRATEL
ip netns exec r50 ifconfig r50-0 20.0.1.1 netmask 255.255.255.192 up
ip netns exec r50 ifconfig lo up
ip netns exec r50 ifconfig r50-1 20.0.2.1 netmask 255.255.255.192 up
ip netns exec r50 ifconfig lo up
ip netns exec r50 ifconfig r50-2 20.0.3.1 netmask 255.255.255.192 up
ip netns exec r50 ifconfig lo up
ip netns exec r50 ifconfig r50-3 20.0.4.1 netmask 255.255.255.192 up
ip netns exec r50 ifconfig lo up
ip netns exec r50 ifconfig r50-6 90.0.1.1 netmask 255.255.255.192 up
ip netns exec r50 ifconfig lo up
# BGP (EBT - I2)
ip netns exec r50 ifconfig r50-10 60.0.1.1 netmask 255.255.255.192 up
ip netns exec r50 ifconfig lo up
ip netns exec r50 ip addr add 200.210.254.1/23 dev lo
ip netns exec r50 ip link set dev lo up

ip netns exec r51 ifconfig r51-0 20.0.1.2 netmask 255.255.255.192 up
ip netns exec r51 ifconfig lo up
ip netns exec r51 ifconfig r51-1 20.0.5.1 netmask 255.255.255.192 up
ip netns exec r51 ifconfig lo up
ip netns exec r51 ifconfig r51-2 20.0.6.1 netmask 255.255.255.192 up
ip netns exec r51 ifconfig lo up
ip netns exec r51 ifconfig r51-3 20.0.10.1 netmask 255.255.255.192 up
ip netns exec r51 ifconfig lo up

#--------------BGP ---------------
ip netns exec r51 ifconfig r51-8 90.0.3.1 netmask 255.255.255.192 up
ip netns exec r51 ifconfig lo up
ip netns exec r51 ip addr add 200.210.253.1/24 dev lo
ip netns exec r51 ip link set dev lo up

ip netns exec r52 ifconfig r52-0 20.0.2.2 netmask 255.255.255.192 up
ip netns exec r52 ifconfig lo up
ip netns exec r52 ifconfig r52-1 20.0.5.2 netmask 255.255.255.192 up
ip netns exec r52 ifconfig lo up
ip netns exec r52 ifconfig r52-2 20.0.7.1 netmask 255.255.255.192 up
ip netns exec r52 ifconfig lo up
ip netns exec r52 ifconfig r52-3 20.0.11.1 netmask 255.255.255.192 up
ip netns exec r52 ifconfig lo up
ip netns exec r52 ifconfig r52-20 99.99.1.1 netmask 255.255.255.192 up
ip netns exec r52 ifconfig lo up
ip netns exec r52 ip addr add 200.210.249.1/24 dev lo
ip netns exec r52 ip link set dev lo up

ip netns exec r53 ifconfig r53-0 20.0.3.2 netmask 255.255.255.192 up
ip netns exec r53 ifconfig lo up
ip netns exec r53 ifconfig r53-1 20.0.7.2 netmask 255.255.255.192 up
ip netns exec r53 ifconfig lo up
ip netns exec r53 ifconfig r53-2 20.0.8.1 netmask 255.255.255.192 up
ip netns exec r53 ifconfig lo up
ip netns exec r53 ifconfig r53-3 20.0.10.2 netmask 255.255.255.192 up
ip netns exec r53 ifconfig lo up
ip netns exec r53 ifconfig r53-7 90.0.2.1 netmask 255.255.255.192 up
ip netns exec r53 ifconfig lo up
ip netns exec r53 ip addr add 200.210.248.1/24 dev lo
ip netns exec r53 ip link set dev lo up

ip netns exec r54 ifconfig r54-0 20.0.4.2 netmask 255.255.255.192 up
ip netns exec r54 ifconfig lo up
ip netns exec r54 ifconfig r54-1 20.0.6.2 netmask 255.255.255.192 up
ip netns exec r54 ifconfig lo up
ip netns exec r54 ifconfig r54-2 20.0.8.2 netmask 255.255.255.192 up
ip netns exec r54 ifconfig lo up
ip netns exec r54 ifconfig r54-3 20.0.11.2 netmask 255.255.255.192 up
ip netns exec r54 ifconfig lo up
ip netns exec r54 ifconfig r54-9 90.0.4.1 netmask 255.255.255.192 up
ip netns exec r54 ifconfig lo up
ip netns exec r54 ip addr add 200.210.247.1/24 dev lo
ip netns exec r54 ip link set dev lo up

#I2
ip netns exec r70 ifconfig r70-0 30.0.1.1 netmask 255.255.255.192 up
ip netns exec r70 ifconfig lo up
ip netns exec r70 ifconfig r70-1 30.0.2.1 netmask 255.255.255.192 up
ip netns exec r70 ifconfig lo up
ip netns exec r70 ifconfig r70-2 30.0.11.1 netmask 255.255.255.192 up
ip netns exec r70 ifconfig lo up
ip netns exec r70 ifconfig r70-10 60.0.1.2 netmask 255.255.255.192 up
ip netns exec r70 ifconfig lo up
ip netns exec r70 ifconfig r70-6 80.0.1.1 netmask 255.255.255.192 up
ip netns exec r70 ifconfig lo up
ip netns exec r70 ip addr add 204.153.48.13/24 dev lo
ip netns exec r70 ip link set dev lo up

ip netns exec r71 ifconfig r71-0 30.0.1.2 netmask 255.255.255.192 up
ip netns exec r71 ifconfig lo up
ip netns exec r71 ifconfig r71-1 30.0.3.1 netmask 255.255.255.192 up
ip netns exec r71 ifconfig lo up
ip netns exec r71 ifconfig r71-2 30.0.18.1 netmask 255.255.255.192 up
ip netns exec r71 ifconfig lo up
ip netns exec r71 ifconfig r71-20 99.99.2.1 netmask 255.255.255.192 up
ip netns exec r71 ifconfig lo up
ip netns exec r71 ip addr add 204.153.49.74/24 dev lo
ip netns exec r71 ip link set dev lo up

ip netns exec r72 ifconfig r72-0 30.0.2.2 netmask 255.255.255.192 up
ip netns exec r72 ifconfig lo up
ip netns exec r72 ifconfig r72-1 30.0.3.2 netmask 255.255.255.192 up
ip netns exec r72 ifconfig lo up
ip netns exec r72 ifconfig r72-2 30.0.4.1 netmask 255.255.255.192 up
ip netns exec r72 ifconfig lo up
#___________________________BGP__________________________________
ip netns exec r72 ifconfig r72-8 80.0.3.1 netmask 255.255.255.192 up
ip netns exec r72 ifconfig lo up
ip netns exec r72 ip addr add 204.153.51.66/24 dev lo
ip netns exec r72 ip link set dev lo up

ip netns exec r73 ifconfig r73-0 30.0.4.2 netmask 255.255.255.192 up
ip netns exec r73 ifconfig lo up
ip netns exec r73 ifconfig r73-1 30.0.11.2 netmask 255.255.255.192 up
ip netns exec r73 ifconfig lo up
ip netns exec r73 ifconfig r73-2 30.0.18.2 netmask 255.255.255.192 up
ip netns exec r73 ifconfig lo up
ip netns exec r73 ifconfig r73-7 80.0.2.1 netmask 255.255.255.192 up
ip netns exec r73 ifconfig lo up
ip netns exec r73 ip addr add 128.112.100.126/24 dev lo
ip netns exec r73 ip link set dev lo up

#RN
ip netns exec r99 ifconfig r99-0 99.99.1.2 netmask 255.255.255.192 up
ip netns exec r99 ifconfig lo up
ip netns exec r99 ifconfig r99-1 99.99.2.2 netmask 255.255.255.192 up
ip netns exec r99 ifconfig lo up
ip netns exec r99 ip addr add 199.99.99.99/24 dev lo
ip netns exec r99 ip link set dev lo up