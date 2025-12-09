execute as @s[tag=!svm_ep.dimension_front_red] run particle minecraft:dust{color:[0.025f,0.125f,0.3f],scale:0.75f} ~ ~ ~ 0.8 0.8 0.8 0 2
execute as @s[tag=!svm_ep.dimension_front_red] run particle minecraft:dust{color:[0.05f,0.25f,0.6f],scale:1f} ~ ~ ~ 0.6 0.6 0.6 0 3
execute as @s[tag=!svm_ep.dimension_front_red] run particle minecraft:dust{color:[0.1f,0.5f,1f],scale:1.25f} ~ ~ ~ 0.4 0.4 0.4 0 3

execute as @s[tag=svm_ep.dimension_front_red] run particle minecraft:dust{color:[0.3f,0.125f,0.025f],scale:0.75f} ~ ~ ~ 0.8 0.8 0.8 0 2
execute as @s[tag=svm_ep.dimension_front_red] run particle minecraft:dust{color:[0.6f,0.25f,0.05f],scale:1f} ~ ~ ~ 0.6 0.6 0.6 0 3
execute as @s[tag=svm_ep.dimension_front_red] run particle minecraft:dust{color:[1f,0.5f,0.1f],scale:1.25f} ~ ~ ~ 0.4 0.4 0.4 0 3

execute as @s[tag=!svm_ep.dimension_front_red] run particle minecraft:dust{color:[0.2f,1f,180000000f],scale:1.75f} ~ ~ ~ 0.3 0.3 0.3 0 4
execute as @s[tag=svm_ep.dimension_front_red] run particle minecraft:dust{color:[180000000f,1f,0.2f],scale:1.75f} ~ ~ ~ 0.3 0.3 0.3 0 4

execute as @s[tag=!svm_ep.dimension_front_red] run particle minecraft:dust{color:[1f,18000000f,180000000f],scale:2f} ~ ~ ~ 0.2 0.2 0.2 0 3
execute as @s[tag=svm_ep.dimension_front_red] run particle minecraft:dust{color:[18000000f,18000000f,1f],scale:2f} ~ ~ ~ 0.2 0.2 0.2 0 3

particle minecraft:dust{color:[18000000f,18000000f,18000000f],scale:2.75f} ~ ~ ~ 0 0 0 0 1


execute as @s[tag=!svm_ep.dimension_front_red] run particle minecraft:soul_fire_flame ~ ~ ~ 0.15 0 0.15 0.25 3
execute as @s[tag=svm_ep.dimension_front_red] run particle minecraft:flame ~ ~ ~ 0.15 0 0.15 0.25 3