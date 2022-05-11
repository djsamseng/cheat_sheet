# Sharing

## Linux
```bash
sudo vim /etc/samba/smb.conf
```
```
   workgroup = sam
   netbiosname = sam

[MyShare]
   path = /home/samuel/shared
   read only = no
   guest ok = yes
```

```bash
sudo /etc/init.d/smbd restart
ifconfig -a # 192.168.1.220
```

## Mac
1. Finder
2. Go > Connect to server
3. smb://linux-ip
4. Connect
5. Guest
