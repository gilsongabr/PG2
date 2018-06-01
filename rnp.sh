#Gilson Gabriel Zozias de Santana

export PATHWAY=$PATHWAY/home/gilson/Documentos/PG2/conf

# 1 Criar os roteadores
#RNP
ip netns add r1 	# AC
ip netns add r2  	# RO
ip netns add r3 	# RS
ip netns add r4 	# SC
ip netns add r5 	# MT
ip netns add r6 	# MS
ip netns add r7 	# PR
ip netns add r8 	# SP
ip netns add r9 	# GO
ip netns add r10 	# TO
ip netns add r11 	# DF
ip netns add r12 	# RJ
ip netns add r13 	# RR
ip netns add r14 	# AM
ip netns add r15 	# BA
ip netns add r16 	# ES
ip netns add r17 	# MG
ip netns add r18 	# SE
ip netns add r19 	# AP
ip netns add r20 	# AL
ip netns add r21 	# CE
ip netns add r22 	# MA
ip netns add r23 	# PA
ip netns add r24 	# PI
ip netns add r25 	# PE
ip netns add r26 	# RN
ip netns add r27 	# PB_JPA
ip netns add r28 	# PB_CGE

#EMBRATEL
ip netns add r50
ip netns add r51
ip netns add r52
ip netns add r53
ip netns add r54

#INTERNET2
ip netns add r70
ip netns add r71
ip netns add r72
ip netns add r73

#FN
ip netns add r99

# 2 Criar as interfaces e links virtuais dos roteadores
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

# 3 Mover as interfaces para namespaces
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

# 4 Configura ip das interfaces e ativar
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



# 5 Ativar roteamento nos roteadores
ip netns exec r1 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r2 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r3 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r4 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r5 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r6 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r7 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r8 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r9 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r10 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r11 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r12 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r13 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r14 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r15 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r16 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r17 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r18 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r19 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r20 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r21 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r22 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r23 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r24 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r25 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r26 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r27 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r28 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'

ip netns exec r50 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r51 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r52 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r53 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r54 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'

ip netns exec r70 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r71 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r72 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'
ip netns exec r73 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'

ip netns exec r99 sh -c 'echo 1 > /proc/sys/net/ipv4/ip_forward'

mkdir -p /tmp/AC/var/run
mkdir -p /tmp/RO/var/run
mkdir -p /tmp/RS/var/run
mkdir -p /tmp/SC/var/run
mkdir -p /tmp/MT/var/run
mkdir -p /tmp/MS/var/run
mkdir -p /tmp/PR/var/run
mkdir -p /tmp/SP/var/run
mkdir -p /tmp/GO/var/run
mkdir -p /tmp/TO/var/run
mkdir -p /tmp/DF/var/run
mkdir -p /tmp/RJ/var/run
mkdir -p /tmp/RR/var/run
mkdir -p /tmp/AM/var/run
mkdir -p /tmp/BA/var/run
mkdir -p /tmp/ES/var/run
mkdir -p /tmp/MG/var/run
mkdir -p /tmp/SE/var/run
mkdir -p /tmp/AP/var/run
mkdir -p /tmp/AL/var/run
mkdir -p /tmp/CE/var/run
mkdir -p /tmp/MA/var/run
mkdir -p /tmp/PA/var/run
mkdir -p /tmp/PI/var/run
mkdir -p /tmp/PE/var/run
mkdir -p /tmp/RN/var/run
mkdir -p /tmp/PB_JPA/var/run
mkdir -p /tmp/PB_CGE/var/run
mkdir -p /tmp/EBT1/var/run
mkdir -p /tmp/EBT2/var/run
mkdir -p /tmp/EBT3/var/run
mkdir -p /tmp/EBT4/var/run
mkdir -p /tmp/EBT5/var/run
mkdir -p /tmp/INT1/var/run
mkdir -p /tmp/INT2/var/run
mkdir -p /tmp/INT3/var/run
mkdir -p /tmp/INT4/var/run
mkdir -p /tmp/FN/var/run

ip netns exec r1 sh -c 'mount --bind /tmp/AC/var/run /var/run && /usr/sbin/bird -c $PATHWAY/AC-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r2 sh -c 'mount --bind /tmp/RO/var/run /var/run && /usr/sbin/bird -c $PATHWAY/RO-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r3 sh -c 'mount --bind /tmp/RS/var/run /var/run && /usr/sbin/bird -c $PATHWAY/RS-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r4 sh -c 'mount --bind /tmp/SC/var/run /var/run && /usr/sbin/bird -c $PATHWAY/SC-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r5 sh -c 'mount --bind /tmp/MT/var/run /var/run && /usr/sbin/bird -c $PATHWAY/MT-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r6 sh -c 'mount --bind /tmp/MS/var/run /var/run && /usr/sbin/bird -c $PATHWAY/MS-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r7 sh -c 'mount --bind /tmp/PR/var/run /var/run && /usr/sbin/bird -c $PATHWAY/PR-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r12 sh -c 'mount --bind /tmp/RJ/var/run /var/run && /usr/sbin/bird -c $PATHWAY/RJ-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r8 sh -c 'mount --bind /tmp/SP/var/run /var/run && /usr/sbin/bird -c $PATHWAY/SP-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r9 sh -c 'mount --bind /tmp/GO/var/run /var/run && /usr/sbin/bird -c $PATHWAY/GO-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r10 sh -c 'mount --bind /tmp/TO/var/run /var/run && /usr/sbin/bird -c $PATHWAY/TO-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r11 sh -c 'mount --bind /tmp/DF/var/run /var/run && /usr/sbin/bird -c $PATHWAY/DF-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r13 sh -c 'mount --bind /tmp/RR/var/run /var/run && /usr/sbin/bird -c $PATHWAY/RR-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r14 sh -c 'mount --bind /tmp/AM/var/run /var/run && /usr/sbin/bird -c $PATHWAY/AM-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r15 sh -c 'mount --bind /tmp/BA/var/run /var/run && /usr/sbin/bird -c $PATHWAY/BA-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r16 sh -c 'mount --bind /tmp/ES/var/run /var/run && /usr/sbin/bird -c $PATHWAY/ES-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r17 sh -c 'mount --bind /tmp/MG/var/run /var/run && /usr/sbin/bird -c $PATHWAY/MG-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r18 sh -c 'mount --bind /tmp/SE/var/run /var/run && /usr/sbin/bird -c $PATHWAY/SE-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r19 sh -c 'mount --bind /tmp/AP/var/run /var/run && /usr/sbin/bird -c $PATHWAY/AP-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r20 sh -c 'mount --bind /tmp/AL/var/run /var/run && /usr/sbin/bird -c $PATHWAY/AL-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r21 sh -c 'mount --bind /tmp/CE/var/run /var/run && /usr/sbin/bird -c $PATHWAY/CE-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r22 sh -c 'mount --bind /tmp/MA/var/run /var/run && /usr/sbin/bird -c $PATHWAY/MA-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r23 sh -c 'mount --bind /tmp/PA/var/run /var/run && /usr/sbin/bird -c $PATHWAY/PA-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r24 sh -c 'mount --bind /tmp/PI/var/run /var/run && /usr/sbin/bird -c $PATHWAY/PI-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r25 sh -c 'mount --bind /tmp/PE/var/run /var/run && /usr/sbin/bird -c $PATHWAY/PE-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r26 sh -c 'mount --bind /tmp/RN/var/run /var/run && /usr/sbin/bird -c $PATHWAY/RN-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r27 sh -c 'mount --bind /tmp/PB_JPA/var/run /var/run && /usr/sbin/bird -c $PATHWAY/PB_JPA-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r28 sh -c 'mount --bind /tmp/PB_CGE/var/run /var/run && /usr/sbin/bird -c $PATHWAY/PB_CGE-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r50 sh -c 'mount --bind /tmp/EBT1/var/run /var/run && /usr/sbin/bird -c $PATHWAY/EBT1.conf -s /var/run/bird.ctl'
ip netns exec r51 sh -c 'mount --bind /tmp/EBT2/var/run /var/run && /usr/sbin/bird -c $PATHWAY/EBT2.conf -s /var/run/bird.ctl'
ip netns exec r52 sh -c 'mount --bind /tmp/EBT3/var/run /var/run && /usr/sbin/bird -c $PATHWAY/EBT3.conf -s /var/run/bird.ctl'
ip netns exec r53 sh -c 'mount --bind /tmp/EBT4/var/run /var/run && /usr/sbin/bird -c $PATHWAY/EBT4.conf -s /var/run/bird.ctl'
ip netns exec r54 sh -c 'mount --bind /tmp/EBT5/var/run /var/run && /usr/sbin/bird -c $PATHWAY/EBT5.conf -s /var/run/bird.ctl'
ip netns exec r70 sh -c 'mount --bind /tmp/INT1/var/run /var/run && /usr/sbin/bird -c $PATHWAY/INT1.conf -s /var/run/bird.ctl'
ip netns exec r71 sh -c 'mount --bind /tmp/INT2/var/run /var/run && /usr/sbin/bird -c $PATHWAY/INT2.conf -s /var/run/bird.ctl'
ip netns exec r72 sh -c 'mount --bind /tmp/INT3/var/run /var/run && /usr/sbin/bird -c $PATHWAY/INT3.conf -s /var/run/bird.ctl'
ip netns exec r73 sh -c 'mount --bind /tmp/INT4/var/run /var/run && /usr/sbin/bird -c $PATHWAY/INT4.conf -s /var/run/bird.ctl'
ip netns exec r99 sh -c 'mount --bind /tmp/FN/var/run /var/run && /usr/sbin/bird -c $PATHWAY/FN.conf -s /var/run/bird.ctl'