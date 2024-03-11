#!/bin/bash
# Creador: TakYz_GG

#--------------------------
#<<--Actualizar Sistema-->>
#--------------------------

# Actualizar el sistema
xbps-install -S
xbps-install -u

#-----------------
#<<--Descargas-->>
#-----------------

# Descargar xorg
xbps-install -y xorg

# Descargar i3
xbps-install -y i3

# Descargar i3blocks
xbps-install -y i3blocks

# Descargar Dmenu
xbps-install -y dmenu

# Descargar LxTerminal
xbps-install -y lxterminal

# Descargar LxDM
xbps-install -y lxdm

# Descargar NetworkManager
xbps-install -y NetworkManager

# Descargar PulseAudio
xbps-install -y pulseaudio

# Descargar PulseAudio-Alsa
xbps-install -y alsa-plugins-pulseaudio

#---------------------------
#<<--Habilitar Servicios-->>
#---------------------------

# Habiliar servicio de LxDM
ln -s /etc/sv/lxdm /var/service/

# Habilitar NetworkManager
ln -s /etc/sv/NetworkManager /var/service/

# Habilitar PulseAudio
ln -s /etc/sv/pulseaudio /var/service/

# Habilitar Dbus
ln -s /etc/sv/dbus /var/service

#-------------------------
#<<--Iniciar Servicios-->>
#-------------------------

# Iniciar LxDM
sv enable lxdm

# Iniciar NetworkManager
sv enable NetworkManager

# Iniciar PulseAudio
sv enable pulseaudio

#-------------------------
#<<--Reiniciar Sistema-->>
#-------------------------

# Reiniciar sistema
reboot