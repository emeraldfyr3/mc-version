scoreboard objectives add mcversion dummy

# Find major version
scoreboard players set major mcversion 1

# Find minor version
scoreboard players set minor mcversion 13
function mcversion:check/1_14
function mcversion:check/1_15
function mcversion:check/1_16

# Find patch version
scoreboard players set patch mcversion 0
# function mcversion:check/1_13_0__1_13_2
# schedule function mcversion:check/1_14_0 10
