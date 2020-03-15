read -n1 -p "Light or Dark" doit 
case $doit in  
  l|L) cp i3/config_light $HOME/.config/i3/config && cp VisualStudioCode/light_settings.json $HOME/.config/Code/User/settings.json;; 
  d|D) cp i3/config_dark $HOME/.config/i3/config ;; 
  *) echo dont know ;; 
esac
