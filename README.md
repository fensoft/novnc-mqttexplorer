```
version: '2'

services:
  mqtt-explorer:
    container_name: mqtt-explorer
    hostname: mqtt-explorer
    image: fensoft/novnc-mqttexplorer:latest
    restart: always
    volumes:
      - mqtt-explorer:/config
    environment:
      - APP_NAME=MQTT Explorer
      - APP_USER=app
      - VNC_PASSWORD=<password>
      - VIRTUAL_HOST=<domain>
      - LETSENCRYPT_HOST=<domain>
      - VIRTUAL_PORT=5800
    ports:
      - 5800:5800
    networks:
      - <network>


volumes:
  mqtt-explorer:

networks:
  <network>:
    external: true
```
