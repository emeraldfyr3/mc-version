scoreboard players set minor mcversion 14
scoreboard players set patch mcversion 0

# Find minor version
execute if score minor mcversion matches ..15 run function mcversion:check/1_16
execute if score minor mcversion matches ..14 run function mcversion:check/1_15

# Find patch version
execute if score minor mcversion matches ..14 run schedule function mcversion:check/1_14_0 10
