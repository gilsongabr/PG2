#!/bin/bash

#Gilson Gabriel Zozias de Santana
#RNP
ip link add r1-0 type veth peer name r2-0  # AC - RO
ip link add r2-1 type veth peer name r5-0  # RO - MT
ip link add r5-1 type veth peer name r6-0  # MT - MS
ip link add r6-1 type veth peer name r7-0  # MS - PR
ip link add r7-1 type veth peer name r3-0  # PR - RS
ip link add r3-1 type veth peer name r4-0  # RS - SC
ip link add r4-1 type veth peer name r8-0  # SC - SP
ip link add r7-2 type veth peer name r8-1  # PR - SP
ip link add r5-2 type veth peer name r9-0  # MT - GO
ip link add r9-1 type veth peer name r10-0 # GO - TO
ip link add r9-2 type veth peer name r11-0 # GO - DF
ip link add r11-1 type veth peer name r12-0 # DF - RJ
ip link add r8-2 type veth peer name r12-1 # SP - RJ
ip link add r11-2 type veth peer name r14-0 # DF - AM
ip link add r14-2 type veth peer name r13-0 # AM - RR
ip link add r11-4 type veth peer name r17-0 # DF - MG
ip link add r8-3 type veth peer name r17-1 # SP - MG
ip link add r8-4 type veth peer name r21-0 # SP - CE
ip link add r12-2 type veth peer name r16-0 # RJ - ES
ip link add r12-3 type veth peer name r17-4 # RJ - MG
ip link add r21-1 type veth peer name r17-2 # CE - MG
ip link add r21-2 type veth peer name r11-3 # CE - DF
ip link add r21-3 type veth peer name r26-0 # CE - RN
ip link add r21-4 type veth peer name r25-0 # CE - PE
ip link add r16-1 type veth peer name r15-0 # ES - BA
ip link add r17-3 type veth peer name r15-1 # MG - BA
ip link add r26-1 type veth peer name r27-0 # RN - PB_JPA
ip link add r25-1 type veth peer name r28-0 # PE - PB_CGE
ip link add r25-2 type veth peer name r24-0 # PE - PI
ip link add r25-3 type veth peer name r20-0 # PE - AL
ip link add r25-4 type veth peer name r15-2 # PE - BA
ip link add r15-3 type veth peer name r18-0 # BA - SE
ip link add r27-1 type veth peer name r28-1 # PB_JPA - PB_CGE
ip link add r24-1 type veth peer name r23-0 # PI - PA
ip link add r20-1 type veth peer name r18-1 # AL - SE
ip link add r23-1 type veth peer name r19-0 # PA - AP
ip link add r23-2 type veth peer name r22-0 # PA - MA
ip link add r23-3 type veth peer name r14-1 # PA - AM
ip link add r23-4 type veth peer name r10-1 # PA - TO
ip link add r22-1 type veth peer name r21-5 # MA - CE
ip link add r8-5 type veth peer name r11-5
################# RN - PB_CGE ##############################

#EMBRATEL
ip link add r50-0 type veth peer name r51-0
ip link add r50-1 type veth peer name r52-0
ip link add r50-2 type veth peer name r53-0
ip link add r50-3 type veth peer name r54-0
ip link add r51-1 type veth peer name r52-1
ip link add r51-2 type veth peer name r54-1
ip link add r52-2 type veth peer name r53-1
ip link add r53-2 type veth peer name r54-2
ip link add r51-3 type veth peer name r53-3
ip link add r52-3 type veth peer name r54-3

#I2
ip link add r70-0 type veth peer name r71-0
ip link add r70-1 type veth peer name r72-0
ip link add r70-2 type veth peer name r73-1
ip link add r71-2 type veth peer name r73-2
ip link add r71-1 type veth peer name r72-1
ip link add r72-2 type veth peer name r73-0


#RN
ip link add r99-0 type veth peer name r52-20 
ip link add r99-1 type veth peer name r71-20

#LINK BGP
#SP - EMBRATEL
ip link add r50-6 type veth peer name r8-6
#RS - EMBRATEL
ip link add r53-7 type veth peer name r3-6
#CE - EMBRATEL
ip link add r51-8 type veth peer name r21-6
#DF - EMBRATEL
ip link add r54-9 type veth peer name r11-6

#I2 - SP
ip link add r70-6 type veth peer name r8-7
#I2 - RS
ip link add r73-7 type veth peer name r3-7
#I2 - CE
ip link add r72-8 type veth peer name r21-7

#LINK BGP (EBT - I2)
ip link add r50-10 type veth peer name r70-10