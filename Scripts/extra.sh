#!/bin/bash

#Crear Grupos
sudo groupadd gr_ESO_rx
sudo groupadd gr_BACH_rx
sudo groupadd gr_DAM_rx
sudo groupadd gr_Prof_rx

#Crear Usuarios
sudo useradd -g gr_ESO_rx -d /home/alu_ESO -m -s /bin/bash alu_ESO
sudo useradd -g gr_BACH_rx -d /home/alu_BACH -m -s /bin/bash alu_BACH
sudo useradd -g gr_DAM_rx -d /home/alu_DAM -m -s /bin/bash alu_DAM
sudo useradd -g gr_Prof_rx -d /home/usu_Prof -m -s /bin/bash usu_Prof

#Añadir Usuarios a Grupos
sudo usermod -a -G alu_ESO  gr_1ESO_rx,gr_2ESO_rx,gr_3ESO_rx,gr_4ESO_rx
sudo usermod -a -G alu_BACH gr_1BACH_rx,gr_2BACH_rx
usermsudo od -a -G alu_DAM gr_DAM_rx
sudo usermod -a -G usu_Prof gr_1ESO_rx,gr_2ESO_rx,gr_3ESO_rx,gr_4ESO_rx,gr_1BACH_rx,gr_2BACH_rx,gr_DAM_rx

#Cambiar contraseña
passwd alu_ESO
passwd alu_BACH
passwd alu_DAM
passwd usu_Prof
