FROM ubuntu:18.04
RUN apt-get update && apt-get install -y samba

RUN mkdir /share
RUN chmod 777 /share

COPY smb.conf /etc/samba/
RUN testparm
CMD nmbd -D && smbd -F
