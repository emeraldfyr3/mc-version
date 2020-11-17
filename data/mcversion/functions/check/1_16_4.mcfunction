# 1.16.4: Fix: Divide by zero error in the Ender dragon entity class can cause a server crash and infinite velocity
# https://bugs.mojang.com/browse/MC-201885
# If we kill the armor stand after 2 ticks, we can detect its high speed without crashing the game.

# Need to get some entity processing chunks for this to work. First where this function is executed.
summon minecraft:ender_dragon ~ -59 ~ {Silent:1b,Tags:["mcversion"]}
# If that failed, try finding a loaded entity and use its position.
execute unless entity @e[type=minecraft:ender_dragon,tag=mcversion,limit=1] at @e[limit=1] run summon minecraft:ender_dragon ~ -59 ~ {PersistenceRequired:1b,Silent:1b,Tags:["mcversion"]}
# If that failed, force-load a chunk. Chunk coordinates taken from shell command "cksum <<< emeraldfyr3"
execute store success score #var1 mcversion run forceload query 22356 64094
execute unless entity @e[type=minecraft:ender_dragon,tag=mcversion,limit=1] unless score #var1 mcversion matches 1 run forceload add 357704 1025512
execute unless entity @e[type=minecraft:ender_dragon,tag=mcversion,limit=1] run summon minecraft:ender_dragon 357704 -59 1025512 {Silent:1b,Tags:["mcversion"]}

schedule function mcversion:helpers/1_16_4_summon 2
