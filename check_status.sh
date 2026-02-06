#!/bin/bash
# Script Inicial

echo "-----------------------------"
echo "---- Diagnostico inicial ----"
echo "-----------------------------"

# Nombre del Equipo 
echo "HostName: $(hostname)"

# IP de la Red Interna del Adaptador 2
ip addr show enp0s8 | grep "inet " | awk '{print $2}'

# Espacio en el Disco
echo "Espacio del Disco"
df -h / | awk  'NR==2 {print "total: "$2 " | Usado: "$3 " | Disponible: "$4}'

echo "-----------------------------"
echo "-----------------------------"

