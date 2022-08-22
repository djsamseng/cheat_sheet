# Raspberry Pi Streaming

## Installation
[Setup Instructions](https://github.com/djsamseng/Grigio#raspberry-pi)
or [Full Setup Instructions](https://www.sigmdel.ca/michel/ha/rpi/streaming_en.html)

### Manual Motorized Focus
[Arducam Motorized Focus Pi Camera](https://www.amazon.com/dp/B07SN8GYGD)
[Code](https://github.com/ArduCAM/RaspberryPi/blob/master/Motorized_Focus_Camera/C/manualFocusPreview.c)
- Comment out `system(runCameraCmd);` and set `flag = 1;` 

### Manual Color and Exposure Control
No auto coloring
```
/usr/local/bin/mjpg_streamer -i "input_raspicam.so -x 1280 -y 720 -fps 15 -br 60 -co 30 -ex off -awb off -awbgainR 2.0 -awbgainB 2.0" -o "/usr/local/lib/mjpg-streamer/output_http.so -p 8085 -w /usr/local/share/mjpg-streamer/www"
```

Autocoloring
```bash
/usr/local/bin/mjpg_streamer -i "input_raspicam.so -x 1280 -y 720 -fps 15 -br 60 -co 30 -ex off -awb sun" -o "/usr/local/lib/mjpg-streamer/output_http.so -p 8085 -w /usr/local/share/mjpg-streamer/www"
```

Options to pass into input_raspicam.so via
```bash
raspistill
```

### Python to turn off auto exposure after setup
[Tutorial](https://learn.adafruit.com/raspberry-pi-hq-camera-low-light-long-exposure-photography?view=all)
```python3
from picamera import PiCamera
import time
time.sleep(30)
camera.exposure_mode = 'off'
```


### Webcam input
```bash
/usr/local/bin/mjpg_streamer -i "/usr/local/lib/mjpg-streamer/input_uvc.so -n -f 10 -r 1280x720" -o "/usr/local/lib/mjpg-streamer/output_http.so -p 8085 -w /usr/local/share/mjpg-streamer/www"
```

