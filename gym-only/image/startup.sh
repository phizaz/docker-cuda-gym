#!/bin/bash

# config the screen resolution
sed -i "s/1024x768/800x600/" /usr/local/bin/xvfb.sh

# some configurations for LXDE
mkdir -p /root/.config/pcmanfm/LXDE/
ln -sf /usr/local/share/doro-lxde-wallpapers/desktop-items-0.conf /root/.config/pcmanfm/LXDE/

# start all the services
exec /bin/tini -- /usr/bin/supervisord -n -c /etc/supervisor/supervisord.conf
