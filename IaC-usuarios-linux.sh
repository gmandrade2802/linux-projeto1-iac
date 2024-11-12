#!/bin/bash
#============================================================================
# SCRIPT de criação de estrutura de usuários, diretórios e permissões
# como projeto para entrega na Formação Linux Fundamentals em https://DIO.me
#
# AUTHOR: Gabriel M. de Andrade
#============================================================================
#
#
echo "--------------------------------------------------------------"
echo "SCRIPT IaC para criação de usuários e estrutuda de diretórios."
echo "--------------------------------------------------------------"
echo "*"
echo "Criando usuários..."
# Criação dos usuários com nome de exibição, diretório pessoal no diretório home, shell bash como padrão e senha padrão
# USUÁRIOS DO GRUPO ADM
useradd carlos -m -c "Carlos do Grupo ADM" -s /bin/bash -p $(openssl passwd Senha123)
useradd maria -m -c "Maria do Grupo ADM" -s /bin/bash -p $(openssl passwd Senha123)
useradd joao -m -c "Joao do Grupo ADM" -s /bin/bash -p $(openssl passwd Senha123)

#USUÁRIOS DO GRUPO VEN
useradd debora -m -c "Debora do Grupo VEN" -s /bin/bash -p $(openssl passwd Senha123)
useradd sebastiana -m -c "Sebastiana do Grupo VEN" -s /bin/bash -p $(openssl passwd Senha123)
useradd roberto -m -c "Roberto do Grupo VEN" -s /bin/bash -p $(openssl passwd Senha123)

#USUÁRIOS DO GRUPO SEC
useradd josefina -m -c "Josefina do Grupo SEC" -s /bin/bash -p $(openssl passwd Senha123)
useradd amanda -m -c "Amanda do Grupo SEC" -s /bin/bash -p $(openssl passwd Senha123)
useradd rogerio -m -c "Rogerio do Grupo SEC" -s /bin/bash -p $(openssl passwd Senha123)

# Criação dos grupos e atribuição de seus usuários
echo "Criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

# Criação das estrutura de diretórios
echo "FIM."
