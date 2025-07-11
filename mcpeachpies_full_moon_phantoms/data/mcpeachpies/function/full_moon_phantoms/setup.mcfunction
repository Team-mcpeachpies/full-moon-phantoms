#gamerule doDaylightCycle false

scoreboard objectives add mpp_moon_phase dummy

scoreboard players set mpp_phantoms_setup mpp_datapacks 1

tellraw @a[gamemode=!survival,gamemode=!adventure] ["",{"text":"Ran Setup for ","color":"gray"},{"text":"mcpeachpies Full Moon Phantoms","italic":true,"color":"blue","clickEvent":{"action":"open_url","value":"https://mcpeachpies.com/datapacks/?"},"hoverEvent":{"action":"show_text","contents":["",{"text":"mcpeachpies.com/datapacks/?","color":"gray"}]}}]

function mcpeachpies:full_moon_phantoms/clock