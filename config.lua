
-- GPIOS
GPIO_DS18B20 = 3
GPIO_SWITCH = 4

-- WiFi
WIFI_SSID = "YOUR_WIFI_SSID"
WIFI_PASS = "YOUR_WIFI_PASSWORD$"

-- Alarms
WIFI_ALARM_ID = 0
TEMP_ALARM_ID = 1

-- MQTT
MQTT_CLIENTID = "thermostat"
MQTT_HOST = "mqtt_host"
MQTT_PORT = 1883
MQTT_MAINTOPIC = "/mqtt_rootpath/thermostat/" .. MQTT_CLIENTID

-- Confirmation message
print("\nGlobal variables loaded...\n")
