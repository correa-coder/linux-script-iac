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
useradd adm1 -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -1 adm1)
useradd adm2 -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -1 adm2)
useradd ven1 -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -1 ven1)
useradd ven2 -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -1 ven2)
useradd sec1 -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -1 sec1)
useradd sec2 -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -1 sec2)

# expire passwords so users can choose a new one on first login
passwd -e adm1
passwd -e adm2
passwd -e ven1
passwd -e ven2
passwd -e sec1
passwd -e sec2

echo "Criado os seguintes usuários: adm1, adm2, ven1, ven2, sec1, sec2"

# change user permissions
chmod 700 /home/adm1
chmod 700 /home/adm2
chmod 700 /home/sec1
chmod 700 /home/sec2
chmod 700 /home/ven1
chmod 700 /home/ven2

echo "Concluído!"
