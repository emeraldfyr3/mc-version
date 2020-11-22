teleport @e[type=minecraft:ender_dragon,tag=mcversion_1_16_4] @e[type=minecraft:area_effect_cloud,tag=mcversion_1_16_4,limit=1]
execute at @e[type=minecraft:ender_dragon,tag=mcversion_1_16_4,limit=1] run schedule function mcversion:helpers/1_16_4_teleport 1
