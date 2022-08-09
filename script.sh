#!/bin/bash

# create directories
echo "Criando diretórios..."
mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec
echo "Criado os seguintes diretórios: /public /adm /ven /sec"

# change directory permissions
chmod 777 /public
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec 

# create groups
echo "Criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Criado os seguintes grupos: GRP_ADM, GRP_VEN e GRP_SEC"

# change group permissions
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

# create users
echo "Criando usuários..."
useradd adm1 -m -s /bin/bash -G GRP_ADM
useradd adm2 -m -s /bin/bash -G GRP_ADM
useradd ven1 -m -s /bin/bash -G GRP_VEN
useradd ven2 -m -s /bin/bash -G GRP_VEN
useradd sec1 -m -s /bin/bash -G GRP_SEC
useradd sec2 -m -s /bin/bash -G GRP_SEC

echo "Senha para adm1:"
passwd adm1

echo "Senha para adm2:"
passwd adm2

echo "Senha para ven1:"
passwd ven1

echo "Senha para ven2:"
passwd ven2

echo "Senha para sec1:"
passwd sec1

echo "Senha para sec2:"
passwd sec2

echo "Criado os seguintes usuários: adm1, adm2, ven1, ven2, sec1, sec2"

# change user permissions
chmod 700 /home/adm1
chmod 700 /home/adm2
chmod 700 /home/sec1
chmod 700 /home/sec2
chmod 700 /home/ven1
chmod 700 /home/ven2

echo "Concluído!"
