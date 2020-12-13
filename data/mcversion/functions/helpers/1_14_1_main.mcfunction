summon minecraft:area_effect_cloud ~ -95 ~ {Tags:["mcversion_1_14_1"]}
scoreboard players set @e[tag=mcversion_1_14_1] mcversion 1
summon minecraft:area_effect_cloud ~ -99 ~ {Tags:["mcversion_1_14_1"]}
execute positioned ~ -99 ~ as @e[tag=mcversion_1_14_1,sort=nearest] run function mcversion:helpers/1_14_1_nearest
kill @e[tag=mcversion_1_14_1]
