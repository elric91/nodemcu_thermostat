# nodemcu_thermostat
A nodemcu based thermostat with DS18B20 and MQTT support
(just measure temperature and activate / deactivate a relay for a heater. Intended to be used with homeassistant generic thermostat component)

Electronics :
- ESP-01 (any ESP8266 will do)
- 3.3V relay board (5V may work as well)
- DS18B20 temperature sensor board
- buck-converter (to go from 3.3V to 5V)
