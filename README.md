# rpi-http-to-mqtt
Docker image of https://github.com/petkov/http_to_mqtt made for Raspberry Pi

## Example usage

```
docker run --name http-to-mqtt -p 5000:5000 -e AUTH_KEY=some-demo-access-key -e MQTT_HOST=mqtt://192.168.1.1:1883 mdoff/rpi-http-to-mqtt
```

