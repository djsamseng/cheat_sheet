# Cheat Sheet

#### Reset Ubuntu Audio - Reset PulseAudio
```bash
systemctl --user restart pulseaudio
```

#### Record Audio
```bash
sox -d rec.wav
```

#### Play Audio
```bash
aplay rec.wav # Linux
afplay rec.wav # MacOS
```

#### Center Audio
```bash
sox test.wav out.wav highpass 10
```

#### grep recursively for text in folder
```bash
./grep_for_text.sh "text to find" /path/to/folder --include=\*.{cpp,h}
grep -Ril "text to find" /path/to/folder --include=\*.{cpp,h}
```

### Change Java versions
```bash
sudo update-alternatives --config java
```

#### Wifi signal strength
```bash
sudo iwlist wlan0 scan | egrep "Cell|ESSID|Signal|Rates" | head -5
```
#### Local ip address
```bash
ipconfig getifaddr en0
```
#### External ip address
```bash
curl ifconfig.me
```

- [Shared folder with Linux and MacOS](./LinuxMacSharing.md)

## RPI video stream
### On RPI
[Setup Instructions](https://github.com/djsamseng/Grigio#raspberry-pi)
or [Full Setup Instructions](https://www.sigmdel.ca/michel/ha/rpi/streaming_en.html)


```bash
/usr/local/bin/mjpg_streamer -i "/usr/local/lib/mjpg-streamer/input_uvc.so -n -f 10 -r 1280x720" -o "/usr/local/lib/mjpg-streamer/output_http.so -p 8085 -w /usr/local/share/mjpg-streamer/www"
```

### Web Browser on Desktop
```bash
ping raspberrypi.local
```

- Raw Video [http://192.168.1.17:8085/?action=stream](http://192.168.1.17:8085/?action=stream])
- Web Interface [http://192.168.1.17:8085/stream.html](http://192.168.1.17:8085/stream.html)

### My Altice Port Forwarding
- [http://192.168.1.1](http://192.168.1.1)
- Port forwarding >> Manage >> Add port forwarding Rule >> Select device >> Enter destination port (external forces internal to be the same, external is outside port and internal port is the port on the device to go to)

### Multiple Git Accounts
1. Generate a second ssh key and rename it to something else
```bash
ssh-keygen -t ed25519 -C "SOMEWHERE_ELSE@gmail.com"
# Enter file in which to save the key (/home/samuel/.ssh/id_ed25519): /home/samuel/.ssh/id_ed25519_SOMEWHERE_ELSE
ssh-add ~/.ssh/id_ed25519_SOMEWHERE_ELSE
```
2. Add the key in github
```bash
cat ~/.ssh/id_ed25519_SOMEHWERE_ELSE.pub
```
3. Create ~/.ssh/config
```bash
Host github.com github account
        HostName github.com
        PreferredAuthentications publickey
        IdentityFile ~/.ssh/id_ed25519

Host github.com-SOMEWHERE github account
        HostName github.com
        PreferredAuthentications publickey
        IdentityFile ~/.ssh/id_ed25519_SOMEWHERE_ELSE
```
4. Update ~/.gitconfig
```bash
[user]
        email = REGULAR@gmail.com
        name = REGULAR
[core]
        editor = vim

[includeIf "gitdir:~/dev/SOMEWHERE_SPECIAL"]
        path = ~/.gitconfigSOMEWHERE_ELSE
```
5. Create ~/.gitconfigSOMEWHERE_ELSE
```bash
[user]
        email = SOMETHING_ELSE@gmail.com
        name = SOMETHING_ELSE
```

6. Add the remote for using the SOMETHING_ELSE account
- `git@github.com-SOMEWHERE` matches the Host in ~/.ssh/config
```bash
git remote add origin git@github.com-SOMEWHERE:account_name/repo_name.git
```

### Reindent VSCode
1. Indent Using Tabs
  1. Select the current tab size (ex: 4 if converting from 4 to 2)
2. Convert Indentation to Tabs
3. Indent Using Tabs
  1. Select the desired tab size (ex: 2 if converting from 4 to 2)
4. Convert Indentation to Spaces
