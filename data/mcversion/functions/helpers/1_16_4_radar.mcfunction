#storing directly to scoreboard doesn't work, but storage does.
execute store result storage mcversion 1_16_4_x double 1 run data get entity @e[type=minecraft:armor_stand,tag=mcversion,limit=1] Motion[0]
execute store result storage mcversion 1_16_4_z double 1 run data get entity @e[type=minecraft:armor_stand,tag=mcversion,limit=1] Motion[2]
kill @e[tag=mcversion]
execute unless score #var1 mcversion matches 1 run forceload remove 357704 1025512

# If either x or z speed is very high (above 30), it must not be 1.16.4.
execute store result score #var1 mcversion run data get storage mcversion 1_16_4_x
execute store result score #var2 mcversion run data get storage mcversion 1_16_4_z
execute if score #var1 mcversion matches -30..30 if score #var2 mcversion matches -30..30 run scoreboard players set patch mcversion 4
data remove storage mcversion 1_16_4_x
data remove storage mcversion 1_16_4_z
