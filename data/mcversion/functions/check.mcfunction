scoreboard objectives add mcversion dummy

# Find major version
scoreboard players set major mcversion 1

# Find minor version
scoreboard players set minor mcversion 13

# Find patch version
scoreboard players set patch mcversion 0
function mcversion:check/1_13_0__1_13_2

# Continue in a new function to enable 1.14+ "execute if"
function mcversion:check/1_14__up
