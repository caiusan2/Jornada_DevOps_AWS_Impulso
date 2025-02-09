#!/bin/bash

echo "...Criando Diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "...Criando Grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "...Criando Usuários..."

useradd carlos -c "Carlos Silva" -s /bin/bash -m -p $(openssl passwd -crypt Senha321) -G GRP_ADM
useradd maria -c "Maria Pereira" -s /bin/bash -m -p $(openssl passwd -crypt Senha321) -G GRP_ADM
useradd joao -c "João Souza" -s /bin/bash -m -p $(openssl passwd -crypt Senha321) -G GRP_ADM

useradd debora -c "Débora Nascimento" -s /bin/bash -m -p $(openssl passwd -crypt Senha321) -G GRP_VEN
useradd sebastiana -c "Sebastiana Medeiros" -s /bin/bash -m -p $(openssl passwd -crypt Senha321) -G GRP_VEN
useradd roberto -c "Roberto Silva" -s /bin/bash -m -p $(openssl passwd -crypt Senha321 -G GRP_VEN

useradd josefina -c "Josefina Maia" -s /bin/bash -m -p $(openssl passwd -crypt Senha321) -G GRP_SEC
useradd amanda -c "Amanda Maria" -s /bin/bash -m -p $(openssl passwd -crypt Senha321) -G GRP_SEC
useradd rogerio -c "Rogério Moura" -s /bin/bash -m -p $(openssl passwd -crypt Senha321) -G GRP_SEC

echo "...Adicionando Permissões..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "Finalizado!"