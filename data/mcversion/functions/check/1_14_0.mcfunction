scoreboard objectives add mcversion dummy

# 1.14.0: Added schedule command

schedule function mcversion:helpers/noop 0

scoreboard players set major mcversion 1
scoreboard players set minor mcversion 14
scoreboard players set patch mcversion 0

# 1.14.1: Fix: Execution order is reversed when calling a function in some cases
# Before 1.14.1, executing a function within a function using a selector with sort=nearest will
# reverse the order, instead executing as if it were sort=furthest.
# https://bugs.mojang.com/browse/MC-126946
execute at @p run summon minecraft:area_effect_cloud ~ -95 ~ {CustomName:"95",Tags:["mcversion"]}
scoreboard players set @e[tag=mcversion] mcversion 1
execute at @p run summon minecraft:area_effect_cloud ~ -99 ~ {CustomName:"99",Tags:["mcversion"]}
execute positioned ~ -99 ~ as @e[tag=mcversion,sort=nearest] run function mcversion:helpers/1_14_1_nearest
kill @e[tag=mcversion]
