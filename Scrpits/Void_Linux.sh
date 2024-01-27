#!/bin/bash
# Creador: TakYz_GG

# Actualizar el sistema
xbps-install -S
xbps-install -u

# Descargar xorg
xbps-install -y xorg

# Descargar I3wm y complementos
xbps-install -y i3 i3blocks

# Descargar programas
xbps-install -y lxterminal feh dmenu lxappearance Thunar midori pavucontrol brightnessctl

# Descargar LxDM
xbps-install -y lxdm

# Habiliar servicio de LxDM
ln -s /etc/sv/lxdm /var/service/

# Descargar NetworkManager
xbps-install -y NetworkManager

# Habilitar NetworkManager
ln -s /etc/sv/NetworkManager /var/service/

# Descargar PulseAudio
xbps-install -y pulseaudio

# Habilitar PulseAudio
ln -s /etc/sv/pulseaudio /var/service/

# Reiniciar sistema
reboot
