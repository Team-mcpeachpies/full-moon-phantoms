#Day
execute if predicate {condition:"minecraft:time_check",value:{min:0,max:12999},period:24000} run scoreboard players set phase mpp_moon_phase 0

#Full Moon
execute if predicate {condition:"minecraft:time_check",value:{min:13000,max:24000},period:192000} run scoreboard players set phase mpp_moon_phase 1

#say Waning Gibbous
execute if predicate {condition:"minecraft:time_check",value:{min:37000,max:48000},period:192000} run scoreboard players set phase mpp_moon_phase 2

#Third Quarter
execute if predicate {condition:"minecraft:time_check",value:{min:61000,max:72000},period:192000} run scoreboard players set phase mpp_moon_phase 3

#Waning Crescent
execute if predicate {condition:"minecraft:time_check",value:{min:85000,max:96000},period:192000} run scoreboard players set phase mpp_moon_phase 4

#New Moon
execute if predicate {condition:"minecraft:time_check",value:{min:109000,max:120000},period:192000} run scoreboard players set phase mpp_moon_phase 5

#Waxing Crescent
execute if predicate {condition:"minecraft:time_check",value:{min:133000,max:144000},period:192000} run scoreboard players set phase mpp_moon_phase 6

#First Quarter
execute if predicate {condition:"minecraft:time_check",value:{min:157000,max:168000},period:192000} run scoreboard players set phase mpp_moon_phase 7

#Waxing Gibbous
execute if predicate {condition:"minecraft:time_check",value:{min:181000,max:192000},period:192000} run scoreboard players set phase mpp_moon_phase 8

execute if score phase mpp_moon_phase matches 1 run gamerule doInsomnia true
execute unless score phase mpp_moon_phase matches 1 run gamerule doInsomnia false
schedule function mcpeachpies:full_moon_phantoms/clock 20t