#!/bin/bash

xset s off
setterm -blank 0
setterm -powerdown 0
xset -dpms

# start the VNC server
#echo student | sudo -u student /usr/bin/tigervncserver -geometry 1280x800 -localhost no -rfbport 5901 -SecurityTypes None --I-KNOW-THIS-IS-INSECURE
/usr/bin/tigervncserver -geometry 1280x800 -localhost no -rfbport 5901 -SecurityTypes None --I-KNOW-THIS-IS-INSECURE

#rm /root/.profile
#rm /home/student/.bashrc
#touch /root/.hushlogin

#copy /260.png /usr/share/desktop-base/kali-theme/wallpaper/contents/images/3840x2160.png

#/usr/share/novnc/utils/novnc_proxy --vnc localhost:5901 --listen 0.0.0.0:6801 &
/usr/share/novnc/utils/launch.sh --vnc localhost:5901 --listen 0.0.0.0:6801 &

# start a shell
#chmod -R 700 /root
#chmod -R 750 /home/student
#cd /home/student
/bin/bash
