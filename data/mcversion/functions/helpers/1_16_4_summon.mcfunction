# The ender dragon is 9 different entities, but only the main one gets the mcversion_1_16_4 tag.
# The one we have to summon the armor stand at is the one nearest to the main one.
execute at @e[type=minecraft:ender_dragon,tag=mcversion_1_16_4] run execute at @e[type=minecraft:ender_dragon,tag=!mcversion_1_16_4,sort=nearest,limit=1] run summon minecraft:armor_stand ~.05 ~ ~.05 {Invisible:1b,Tags:["mcversion_1_16_4"]}
schedule function mcversion:helpers/1_16_4_radar 1
