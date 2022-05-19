# Cheat Sheet

- grep recursively for text in folder
```bash
./grep_for_text.sh "text to find" /path/to/folder --include=\*.{cpp,h}
grep -Ril "text to find" /path/to/folder --include=\*.{cpp,h}
```

- [Shared folder with Linux and MacOS](./LinuxMacSharing.md)

## RPI video stream
### On RPI

```bash
raspivid -t 0 -l -o tcp://0.0.0.0:3333
```

### VLC player on Desktop

```bash
ping raspberrypi.local
```

File >> Open Network >> `tcp/h264://192.168.1.17:3333`
