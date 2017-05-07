FROM jbonachera/arch
RUN pacman -S --noconfirm samba
VOLUME /media/smb
COPY smb.conf /etc/samba/smb.conf
ENTRYPOINT /usr/bin/smbd -FS
