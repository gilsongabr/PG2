#!/bin/bash

#Gilson Gabriel Zozias de Santana

#RNP
ip link set r1-0 netns r1 	# AC - RO
ip link set r2-0 netns r2 	# AC - RO

ip link set r2-1 netns r2   # RO - MT
ip link set r5-0 netns r5 	# RO - MT

ip link set r5-1 netns r5 	# MT - MS
ip link set r6-0 netns r6 	# MT - MS

ip link set r6-1 netns r6 	# MS - PR
ip link set r7-0 netns r7 	# MS - PR

ip link set r7-1 netns r7 	# PR - RS
ip link set r3-0 netns r3 	# PR - RS

ip link set r3-1 netns r3 	# RS - SC
ip link set r4-0 netns r4 	# RS - SC

ip link set r4-1 netns r4 	# SC - SP
ip link set r8-0 netns r8 	# SC - SP

ip link set r7-2 netns r7 	# PR - SP
ip link set r8-1 netns r8 	# PR - SP

ip link set r5-2 netns r5 	# MT - GO
ip link set r9-0 netns r9 	# MT - GO

ip link set r9-1 netns r9 	# GO - TO
ip link set r10-0 netns r10 # GO - TO

ip link set r9-2 netns r9 	# GO - DF
ip link set r11-0 netns r11 # GO - DF

ip link set r11-1 netns r11 # DF - RJ
ip link set r12-0 netns r12 # DF - RJ

ip link set r8-2 netns r8 	# SP - RJ
ip link set r12-1 netns r12 # SP - RJ

ip link set r11-2 netns r11 # DF - AM
ip link set r14-0 netns r14 # DF - AM

ip link set r14-2 netns r14 # AM - RR
ip link set r13-0 netns r13 # AM - RR

ip link set r11-4 netns r11 # DF - MG
ip link set r17-0 netns r17 # DF - MG

ip link set r8-3 netns r8   # SP - MG
ip link set r17-1 netns r17 # SP - MG

ip link set r8-4 netns r8 	# SP - CE
ip link set r21-0 netns r21  # SP - CE

ip link set r12-2 netns r12 # RJ - ES
ip link set r16-0 netns r16 # RJ - ES

ip link set r12-3 netns r12 # RJ - MG
ip link set r17-4 netns r17 # RJ - MG

ip link set r21-1 netns r21 # CE - MG
ip link set r17-2 netns r17 # CE - MG

ip link set r21-2 netns r21 # CE - DF
ip link set r11-3 netns r11 # CE - DF

ip link set r21-3 netns r21 # CE - RN
ip link set r26-0 netns r26 # CE - RN

ip link set r21-4 netns r21 # CE - PE
ip link set r25-0 netns r25 # CE - PE

ip link set r16-1 netns r16 # ES - BA
ip link set r15-0 netns r15 # ES - BA

ip link set r17-3 netns r17 # MG - BA
ip link set r15-1 netns r15 # MG - BA

ip link set r26-1 netns r26 # RN - PB_JPA
ip link set r27-0 netns r27 # RN - PB_JPA

ip link set r25-1 netns r25 # PE - PB_CGE
ip link set r28-0 netns r28 # PE - PB_CGE

ip link set r25-2 netns r25 # PE - PI
ip link set r24-0 netns r24 # PE - PI

ip link set r25-3 netns r25 # PE - AL
ip link set r20-0 netns r20 # PE - AL

ip link set r25-4 netns r25 # PE - BA
ip link set r15-2 netns r15 # PE - BA

ip link set r15-3 netns r15 # BA - SE
ip link set r18-0 netns r18 # BA - SE

ip link set r27-1 netns r27 # PB_JPA - PB_CGE
ip link set r28-1 netns r28 # PB_JPA - PB_CGE

ip link set r24-1 netns r24 # PI - PA
ip link set r23-0 netns r23 # PI - PA

ip link set r20-1 netns r20 # AL - SE
ip link set r18-1 netns r18 # AL - SE

ip link set r23-1 netns r23 # PA - AP
ip link set r19-0 netns r19 # PA - AP

ip link set r23-2 netns r23 # PA - MA
ip link set r22-0 netns r22 # PA - MA

ip link set r23-3 netns r23 # PA - AM
ip link set r14-1 netns r14 # PA - AM

ip link set r23-4 netns r23 # PA - TO
ip link set r10-1 netns r10 # PA - TO

ip link set r22-1 netns r22 # MA - CE
ip link set r21-5 netns r21 # MA - CE

ip link set r8-5 netns r8
ip link set r11-5 netns r11

#EMBRATEL
ip link set r50-0 netns r50
ip link set r50-1 netns r50
ip link set r50-2 netns r50
ip link set r50-3 netns r50

ip link set r51-0 netns r51
ip link set r51-1 netns r51
ip link set r51-2 netns r51
ip link set r51-3 netns r51

ip link set r52-0 netns r52
ip link set r52-1 netns r52
ip link set r52-2 netns r52
ip link set r52-3 netns r52

ip link set r53-0 netns r53
ip link set r53-1 netns r53
ip link set r53-2 netns r53
ip link set r53-3 netns r53

ip link set r54-0 netns r54
ip link set r54-1 netns r54
ip link set r54-2 netns r54
ip link set r54-3 netns r54

#I2
ip link set r70-0 netns r70
ip link set r70-1 netns r70 
ip link set r70-2 netns r70 

ip link set r71-0 netns r71
ip link set r71-1 netns r71
ip link set r71-2 netns r71 

ip link set r72-0 netns r72 
ip link set r72-1 netns r72
ip link set r72-2 netns r72

ip link set r73-0 netns r73
ip link set r73-1 netns r73 
ip link set r73-2 netns r73 

# LINK BGP (EMBRATEL - RNP)
ip link set r50-6 netns r50 
ip link set r53-7 netns r53
ip link set r51-8 netns r51
ip link set r54-9 netns r54

ip link set r8-6 netns r8 
ip link set r3-6 netns r3 
ip link set r21-6 netns r21 
ip link set r11-6 netns r11

# LINK BGP (I2-RNP)
ip link set r70-6 netns r70
ip link set r73-7 netns r73
ip link set r72-8 netns r72

ip link set r8-7 netns r8
ip link set r3-7 netns r3
ip link set r21-7 netns r21

#LINK BGP (EBT - I2)
ip link set r50-10 netns r50
ip link set r70-10 netns r70

#LINK BGP (RN - EBT| RN -I2)
ip link set r99-0 netns r99
ip link set r99-1 netns r99
ip link set r52-20 netns r52
ip link set r71-20 netns r71