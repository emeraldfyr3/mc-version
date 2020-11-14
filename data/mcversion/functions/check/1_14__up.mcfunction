#!debug
say Checking for 1.14+

scoreboard players set minor mcversion 14
scoreboard players set patch mcversion 0

# Find minor version
execute if score minor mcversion matches ..16 run function mcversion:check/1_17
execute if score minor mcversion matches ..15 run function mcversion:check/1_16
execute if score minor mcversion matches ..14 run function mcversion:check/1_15

# Find patch version
execute if score minor mcversion matches ..16 if score patch mcversion matches ..1 run function mcversion:check/1_16_2
execute if score minor mcversion matches ..15 if score patch mcversion matches ..1 run function mcversion:check/1_15_2
execute if score minor mcversion matches ..14 if score patch mcversion matches ..2 run function mcversion:check/1_14_3__1_14_4
execute if score minor mcversion matches ..14 if score patch mcversion matches ..1 run function mcversion:check/1_14_1__1_14_2
