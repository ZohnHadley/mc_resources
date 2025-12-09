#
execute at @s run function svm_ep:system/test/macro/random_rot
execute at @s run function svm_ep:system/test/macro/rot

execute at @s run tp @s ^ ^ ^0.25
execute at @s run particle minecraft:dust{color:[0.8f,0.5f,18000000f],scale:2.25f} ~ ~0.8 ~
execute at @s run tp @s ^ ^ ^0.25
execute at @s run particle minecraft:dust{color:[0.8f,0.5f,18000000f],scale:2.25f} ~ ~0.8 ~
execute at @s run tp @s ^ ^ ^0.25
execute at @s run particle minecraft:dust{color:[0.8f,0.5f,18000000f],scale:2.25f} ~ ~0.8 ~
execute at @s run particle minecraft:dust{color:[0.8f,0.5f,18000000f],scale:2.25f} ~ ~0.8 ~
#
execute at @s run tp @s ^ ^ ^0.25 facing entity @e[tag=end,limit=1]
execute at @s run particle minecraft:dust{color:[0.8f,0.5f,18000000f],scale:2.25f} ~ ~0.8 ~
#
execute at @s run tp @s ^ ^ ^0.25 facing entity @e[tag=end,limit=1]
execute at @s run particle minecraft:dust{color:[0.8f,0.5f,18000000f],scale:2.25f} ~ ~0.8 ~
#
execute at @s run tp @s ^ ^ ^0.25 facing entity @e[tag=end,limit=1]
execute at @s run particle minecraft:dust{color:[0.8f,0.5f,18000000f],scale:2.25f} ~ ~0.8 ~


execute at @s if entity @e[tag=end,distance=..20] unless entity @e[tag=end,distance=..2.5] run function svm_ep:power/dimension_traveler/quick_portal/move
