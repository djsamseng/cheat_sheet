# Cheat Sheet

- grep recursively for text in folder
```bash
./grep_for_text.sh "text to find" /path/to/folder --include=\*.{cpp,h}
grep -Ril "text to find" /path/to/folder --include=\*.{cpp,h}
```
- Wifi signal strength
```bash
sudo iwlist wlan0 scan | egrep "Cell|ESSID|Signal|Rates" | head -5
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

