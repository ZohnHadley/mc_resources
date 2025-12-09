execute as @s[tag=!svm_ep.big] run data merge entity @s {teleport_duration:1,transformation:{scale:[2.75f,2.75f,2.75f]},interpolation_duration:3,start_interpolation:-1}

tag @s add svm_ep.big

execute at @s[tag=!svm_ep.void_manipulated] run playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 0.25 0.4
execute at @s[tag=svm_ep.void_manipulated] run playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 0.3 0.5

execute at @s positioned ~ ~1 ~ run function svm_ep:power/void/charging/erase_3x1x3
execute at @s positioned ~ ~ ~ run function svm_ep:power/void/charging/erase_3x1x3
execute at @s positioned ~ ~-1 ~ run function svm_ep:power/void/charging/erase_3x1x3

execute at @s as @e[tag=!same_id,dx=3,type=!#svm_ep:technical] run tag @s add hitby
execute at @s as @e[tag=!same_id,distance=..3.5,type=!#svm_ep:technical] run tag @s add hitby
execute at @s as @e[tag=!executor,scores={svm_ep.projectile=1..},distance=..4.2] run tag @s add hitby

particle minecraft:dust{color:[0.2f,0.2f,0.2f],scale:2.5f} ~ ~ ~ 2.2 2.2 2.2 0 30
particle minecraft:dust{color:[0.1f,0.1f,0.1f],scale:3f} ~ ~ ~ 1.5 1.5 1.5 0 12
particle minecraft:dust{color:[0f,0f,0f],scale:3.5f} ~ ~ ~ 0.5 0.5 0.5 0 5
particle minecraft:dust{color:[18000000f,18000000f,18000000f],scale:2.5f} ~ ~ ~ 0.25 0.25 0.25 0 15

particle minecraft:smoke ~ ~ ~ 0.15 0.15 0.15 0.57 16

