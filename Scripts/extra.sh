#!/bin/bash

#Crear Grupos
sudo groupadd gr_ESO_rx
sudo groupadd gr_BACH_rx
sudo groupadd gr_DAM_rx
sudo groupadd gr_Prof_rx

#Crear Usuarios
sudo useradd -m -s /bin/bash -G gr_ESO_rx alu_ESO
sudo useradd -m -s /bin/bash -G gr_BACH_rx alu_BACH
sudo useradd -m -s /bin/bash -G gr_DAM_rx alu_DAM
sudo useradd -m -s /bin/bash -G gr_Prof_rx usu_Prof

#Añadir Usuarios a Grupos
sudo usermod -a -G gr_1ESO_rx,gr_2ESO_rx,gr_3ESO_rx,gr_4ESO_rx alu_ESO
sudo usermod -a -G gr_1BACH_rx,gr_2BACH_rx alu_BACH
sudo usermod -a -G gr_DAM_rx alu_DAM
sudo usermod -a -G gr_1ESO_rx,gr_2ESO_rx,gr_3ESO_rx,gr_4ESO_rx,gr_1BACH_rx,gr_2BACH_rx,gr_DAM_rx usu_Prof
