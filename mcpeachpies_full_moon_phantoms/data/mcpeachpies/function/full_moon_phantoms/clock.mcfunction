#Day
execute if predicate {condition:"minecraft:time_check",clock:"minecraft:overworld",value:{min:0,max:12999},period:24000} run scoreboard players set moon_phase mpp_phantoms 0

#Full Moon
execute if predicate {condition:"minecraft:time_check",clock:"minecraft:overworld",value:{min:13000,max:24000},period:192000} run scoreboard players set moon_phase mpp_phantoms 1

#say Waning Gibbous
execute if predicate {condition:"minecraft:time_check",clock:"minecraft:overworld",value:{min:37000,max:48000},period:192000} run scoreboard players set moon_phase mpp_phantoms 2

#Third Quarter
execute if predicate {condition:"minecraft:time_check",clock:"minecraft:overworld",value:{min:61000,max:72000},period:192000} run scoreboard players set moon_phase mpp_phantoms 3

#Waning Crescent
execute if predicate {condition:"minecraft:time_check",clock:"minecraft:overworld",value:{min:85000,max:96000},period:192000} run scoreboard players set moon_phase mpp_phantoms 4

#New Moon
execute if predicate {condition:"minecraft:time_check",clock:"minecraft:overworld",value:{min:109000,max:120000},period:192000} run scoreboard players set moon_phase mpp_phantoms 5

#Waxing Crescent
execute if predicate {condition:"minecraft:time_check",clock:"minecraft:overworld",value:{min:133000,max:144000},period:192000} run scoreboard players set moon_phase mpp_phantoms 6

#First Quarter
execute if predicate {condition:"minecraft:time_check",clock:"minecraft:overworld",value:{min:157000,max:168000},period:192000} run scoreboard players set moon_phase mpp_phantoms 7

#Waxing Gibbous
execute if predicate {condition:"minecraft:time_check",clock:"minecraft:overworld",value:{min:181000,max:192000},period:192000} run scoreboard players set moon_phase mpp_phantoms 8

#execute store 
execute store result score gamerule mpp_phantoms run gamerule minecraft:spawn_phantoms
execute if score moon_phase mpp_phantoms matches 1 if score gamerule mpp_phantoms matches 0 run gamerule minecraft:spawn_phantoms true
#execute if score moon_phase mpp_phantoms matches 1 if score gamerule mpp_phantoms matches 0 run say gamerule set to true
execute unless score moon_phase mpp_phantoms matches 1 unless score gamerule mpp_phantoms matches 0 run gamerule minecraft:spawn_phantoms false
#execute unless score moon_phase mpp_phantoms matches 1 unless score gamerule mpp_phantoms matches 0 run say gamerule set to false
schedule function mcpeachpies:full_moon_phantoms/clock 20t