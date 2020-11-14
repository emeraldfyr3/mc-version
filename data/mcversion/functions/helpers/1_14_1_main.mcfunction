execute at @s run summon minecraft:area_effect_cloud ~ -95 ~ {Tags:["mcversion"]}
scoreboard players set @e[tag=mcversion] mcversion 1
execute at @s run summon minecraft:area_effect_cloud ~ -99 ~ {Tags:["mcversion"]}
execute positioned ~ -99 ~ as @e[tag=mcversion,sort=nearest] run function mcversion:helpers/1_14_1_nearest
kill @e[tag=mcversion]
