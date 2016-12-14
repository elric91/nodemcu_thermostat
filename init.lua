-- init all globals
function load_lib(fname)
    if file.open(fname .. ".lc") then
        file.close()
        dofile(fname .. ".lc")
    else
        dofile(fname .. ".lua")
    end
end

load_lib("config")

-- Switch Off by default
gpio.mode(GPIO_SWITCH, gpio.OUTPUT)
gpio.write(GPIO_SWITCH, gpio.LOW)



local wifiReady = 0
local firstPass = 0

function configureWiFi()
    wifi.setmode(wifi.STATION)
    wifi.sta.config(WIFI_SSID, WIFI_PASS)
    tmr.alarm(WIFI_ALARM_ID, 2000, 1, wifi_watch)
end

function wifi_watch() 
    
    status = wifi.sta.status()
    -- only do something if the status actually changed (5: STATION_GOT_IP.)
    if status == 5 and wifiReady == 0 then
        wifiReady = 1
        print("WiFi: connected with " .. wifi.sta.getip())
        load_lib("broker")
    elseif status == 5 and wifiReady == 1 then
        if firstPass == 0 then
            firstPass = 1
						print("WiFi: Ready")
        end
    else
        wifiReady = 0
        print("WiFi: (re-)connecting")

    end
end
-- Configure
configureWiFi()
