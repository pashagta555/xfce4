apt update && apt install xfce4 xdm xfce4-xkb-plugin language-pack-ru -y
sed -i 's/allowed_users=console/allowed_users=anybody/' /etc/X11/Xwrapper.config
echo "xfce4-session" | tee ~/.xsession
systemctl enable xdm.service
echo 'FRAMEBUFFER=Y' >> /etc/initramfs-tools/initramfs.conf 
update-initramfs -u -k `uname -r`
