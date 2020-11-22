# 1.16.4: Fix: Divide by zero error in the Ender dragon entity class can cause a server crash and infinite velocity
# https://bugs.mojang.com/browse/MC-201885
# Summoning an armor stand close to the center will give it very high speed in 1.16.3 without causing the crash.

# Need to get some entity processing chunks for this to work. First try to find a player.
execute at @p run summon minecraft:ender_dragon ~ -59 ~ {Silent:1b,Tags:["mcversion_1_16_4"]}
# If that failed, force-load a chunk. Chunk coordinates taken from shell command "cksum <<< mcversion:check/1_16_4"
# I couldn't get this to work in forceloaded chunks. Uncomment to use forceload:
# execute store success score #1_16_4__loaded mcversion run forceload query 41601 05356
# execute unless entity @e[type=minecraft:ender_dragon,tag=mcversion_1_16_4] unless score #1_16_4__loaded mcversion matches 1 run forceload add 665624 85704
# execute unless entity @e[type=minecraft:ender_dragon,tag=mcversion_1_16_4] run summon minecraft:ender_dragon 665624 -59 85704 {Silent:1b,Tags:["mcversion_1_16_4"]}

# Remove "execute at @p run" if forceload works:
execute at @e[type=minecraft:ender_dragon,tag=mcversion_1_16_4,limit=1] run schedule function mcversion:helpers/1_16_4_summon 2

execute at @e[type=minecraft:ender_dragon,tag=mcversion_1_16_4,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["mcversion_1_16_4"],WaitTime:9}
execute at @e[type=minecraft:ender_dragon,tag=mcversion_1_16_4,limit=1] run function mcversion:helpers/1_16_4_teleport

# This is needed if forceload doesn't work:
execute unless score disable_player mcversion matches 1 unless entity @e[type=minecraft:ender_dragon,tag=mcversion_1_16_4] run schedule function mcversion:check/1_16_4 1
