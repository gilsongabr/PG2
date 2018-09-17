#!/bin/bash

#Gilson Gabriel Zozias de Santana

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

ip netns exec r1 sh -c 'mount --bind /tmp/AC/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/AC-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r2 sh -c 'mount --bind /tmp/RO/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/RO-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r3 sh -c 'mount --bind /tmp/RS/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/RS-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r4 sh -c 'mount --bind /tmp/SC/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/SC-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r5 sh -c 'mount --bind /tmp/MT/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/MT-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r6 sh -c 'mount --bind /tmp/MS/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/MS-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r7 sh -c 'mount --bind /tmp/PR/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/PR-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r12 sh -c 'mount --bind /tmp/RJ/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/RJ-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r8 sh -c 'mount --bind /tmp/SP/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/SP-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r9 sh -c 'mount --bind /tmp/GO/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/GO-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r10 sh -c 'mount --bind /tmp/TO/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/TO-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r11 sh -c 'mount --bind /tmp/DF/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/DF-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r13 sh -c 'mount --bind /tmp/RR/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/RR-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r14 sh -c 'mount --bind /tmp/AM/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/AM-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r15 sh -c 'mount --bind /tmp/BA/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/BA-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r16 sh -c 'mount --bind /tmp/ES/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/ES-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r17 sh -c 'mount --bind /tmp/MG/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/MG-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r18 sh -c 'mount --bind /tmp/SE/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/SE-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r19 sh -c 'mount --bind /tmp/AP/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/AP-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r20 sh -c 'mount --bind /tmp/AL/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/AL-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r21 sh -c 'mount --bind /tmp/CE/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/CE-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r22 sh -c 'mount --bind /tmp/MA/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/MA-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r23 sh -c 'mount --bind /tmp/PA/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/PA-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r24 sh -c 'mount --bind /tmp/PI/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/PI-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r25 sh -c 'mount --bind /tmp/PE/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/PE-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r26 sh -c 'mount --bind /tmp/RN/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/RN-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r27 sh -c 'mount --bind /tmp/PB_JPA/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/PB_JPA-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r28 sh -c 'mount --bind /tmp/PB_CGE/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/PB_CGE-OSPF-BIRD.conf -s /var/run/bird.ctl'
ip netns exec r50 sh -c 'mount --bind /tmp/EBT1/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/EBT1.conf -s /var/run/bird.ctl'
ip netns exec r51 sh -c 'mount --bind /tmp/EBT2/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/EBT2.conf -s /var/run/bird.ctl'
ip netns exec r52 sh -c 'mount --bind /tmp/EBT3/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/EBT3.conf -s /var/run/bird.ctl'
ip netns exec r53 sh -c 'mount --bind /tmp/EBT4/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/EBT4.conf -s /var/run/bird.ctl'
ip netns exec r54 sh -c 'mount --bind /tmp/EBT5/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/EBT5.conf -s /var/run/bird.ctl'
ip netns exec r70 sh -c 'mount --bind /tmp/INT1/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/INT1.conf -s /var/run/bird.ctl'
ip netns exec r71 sh -c 'mount --bind /tmp/INT2/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/INT2.conf -s /var/run/bird.ctl'
ip netns exec r72 sh -c 'mount --bind /tmp/INT3/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/INT3.conf -s /var/run/bird.ctl'
ip netns exec r73 sh -c 'mount --bind /tmp/INT4/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/INT4.conf -s /var/run/bird.ctl'
ip netns exec r99 sh -c 'mount --bind /tmp/FN/var/run /var/run && /usr/sbin/bird -c $PATHWAY/conf/FN.conf -s /var/run/bird.ctl'