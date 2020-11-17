#storing directly to scoreboard doesn't work, but storage does.
execute store result storage mcversion 1_16_4__x double 1 run data get entity @e[type=minecraft:armor_stand,tag=mcversion,limit=1] Motion[0]
execute store result storage mcversion 1_16_4__z double 1 run data get entity @e[type=minecraft:armor_stand,tag=mcversion,limit=1] Motion[2]
kill @e[tag=mcversion]
execute unless score #1_16_4__loaded mcversion matches 1 run forceload remove 357704 1025512

# If either x or z speed is very high (above 30), it must not be 1.16.4.
execute store result score #1_16_4__x mcversion run data get storage mcversion 1_16_4__x
execute store result score #1_16_4__z mcversion run data get storage mcversion 1_16_4__z
execute if score #1_16_4__x mcversion matches -30..30 if score #1_16_4__z mcversion matches -30..30 run scoreboard players set patch mcversion 4
data remove storage mcversion 1_16_4__x
data remove storage mcversion 1_16_4__z
