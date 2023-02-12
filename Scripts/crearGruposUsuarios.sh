#!/bin/bash

#Crear Grupos
sudo groupadd gr_1ESO_rwx
sudo groupadd gr_1ESO_rx
sudo groupadd gr_2ESO_rwx
sudo groupadd gr_2ESO_rx
sudo groupadd gr_3ESO_rwx
sudo groupadd gr_3ESO_rx
sudo groupadd gr_4ESO_rwx
sudo groupadd gr_4ESO_rx
sudo groupadd gr_1BACH_rwx
sudo groupadd gr_1BACH_rx
sudo groupadd gr_2BACH_rwx
sudo groupadd gr_2BACH_rx
sudo groupadd gr_DAM_rwx

#Crear Usuarios
sudo useradd -m -s /bin/bash -G gr_1ESO_rwx alu_1ESO
sudo useradd -m -s /bin/bash -G gr_2ESO_rwx alu_2ESO
sudo useradd -m -s /bin/bash -G gr_3ESO_rwx alu_3ESO
sudo useradd -m -s /bin/bash -G gr_4ESO_rwx alu_4ESO
sudo useradd -m -s /bin/bash -G gr_1BACH_rwx alu_1BACH
sudo useradd -m -s /bin/bash -G gr_2BACH_rwx alu_2BACH
sudo useradd -m -s /bin/bash -G gr_DAM_rwx alu_1DAM
sudo useradd -m -s /bin/bash -G gr_DAM_rwx alu_2DAM

#Añadir Usuarios a Grupos
sudo usermod -a -G gr_2ESO_rx,gr_3ESO_rx,gr_4ESO_rx alu_1ESO
sudo usermod -a -G gr_1ESO_rx,gr_3ESO_rx,gr_4ESO_rx alu_2ESO
sudo usermod -a -G gr_1ESO_rx,gr_2ESO_rx,gr_4ESO_rx alu_3ESO
sudo usermod -a -G gr_1ESO_rx,gr_2ESO_rx,gr_3ESO_rx alu_4ESO
sudo usermod -a -G gr_2BACH_rx alu_1BACH
sudo usermod -a -G gr_1BACH_rx alu_2BACH
sudo usermod -a -G root,daemon,bin,sys,adm,tty,disk,lp,mail,uucp,man,proxy,kmem alu_1DAM
sudo usermod -a -G root,daemon,bin,sys,adm,tty,disk,lp,mail,uucp,man,proxy,kmem alu_2DAM
