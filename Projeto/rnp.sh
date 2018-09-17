#!/bin/bash

#Gilson Gabriel Zozias de Santana

export PATHWAY=$PATHWAY/home/gilson/Documentos/PG2

chmod +x add_roteadores.sh
chmod +x add_interfaces.sh
chmod +x move_interfaces.sh
chmod +x conf_ip.sh
chmod +x atv_roteadores.sh
chmod +x rpf.sh


# 1 Criar os roteadores
sh -c ./add_roteadores.sh

# 2 Criar as interfaces e links virtuais dos roteadores
sh -c ./add_interfaces.sh

# 3 Mover as interfaces para namespaces
sh -c ./move_interfaces.sh

# 4 Configura ip das interfaces e ativar
sh -c ./conf_ip.sh

# 5 Ativar roteamento nos roteadores
sh -c ./atv_roteadores.sh

# 6 Reverse Path Filtering
sh -c ./rpf.sh
