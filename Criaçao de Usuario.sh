#!/bin/bash

echo "Criando Diretorios"

mkdir /PUBLICO
mkdir /ADM
mkdir /VEN
mkdir /SEC

echo "Criando grupos de Usuários"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários"

useradd Carlos -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd Maria -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd Joao -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM

useradd Debora -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd Sebastiana -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd Roberto -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN

useradd Josefina -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd Amanda -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd Rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC

echo "Especificando Permissões dos Diretórios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /ADM
chmod 770 /VEN
chmod 770 /SEC
chmod 770 /PUBLICO
