#!/bin/bash

read -n1 -p "Light or Dark [l|d]: " doit 
case $doit in  
  l|L) cp i3/config_light $HOME/.config/i3/config && cp VisualStudioCode/light_settings.json $HOME/.config/Code/User/settings.json;; 
  d|D) cp i3/config_dark $HOME/.config/i3/config && cp VisualStudioCode/dark_settings.json $HOME/.config/Code/User/settings.json;; 
  *) echo dont know ;; 
esac

cp i3/i3blocks.conf $HOME/.config/i3/

read -n1 -p "Laptop? [y|n]: " doit
case $doit in
	y|Y) cat i3/BatteryLaptop >> $HOME/.config/i3/i3blocks.conf && cat i3/BrightnessLaptop >> $HOME/.config/i3/config ;;
	*) ;;
esac
