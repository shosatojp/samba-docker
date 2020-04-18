# Samba Docker

# Usage

**allow guests and connect from lan**

```sh
sudo docker-compose up --build
```

# (Optional) Add User

```
$ sudo docker-compose exec samba bash
# useradd username
# pdbedit -a -u username
```

deny guests or restrict user

```conf
[share]
   path = /share
   writable = yes
   browseable = yes
   guest ok = no
   guest only = no
   # valid user = username
   create mode = 0777
   directory mode = 0777
```

# (Optional) Configuration

allow connect from any hosts

```conf
hosts allow = ANY
```
