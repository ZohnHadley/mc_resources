particle minecraft:enchanted_hit ~ ~ ~ 1.5 1.5 1.5 0.7 10 force @a
particle minecraft:sculk_soul ~ ~ ~ 0.5 0.5 0.5 0.5 15 force @a

particle dust{color:[1f,18000000f,18000000f],scale:2.8} ~ ~ ~ 0.3 0.3 0.3 0 3 force @a

particle dust{color:[0.45f,0.75f,18000000f],scale:2.4f} ~ ~ ~ 0.5 0.5 0.5 0 5 force @a

particle minecraft:dust{color:[0.1f,0.5f,1f],scale:1.5f} ~ ~ ~ 1.5 1.5 1.5 0 11 force @a

particle minecraft:dust{color:[0.25f,0.75f,1f],scale:1.7f} ~ ~ ~ 2.25 2.25 2.25 0 12 force @a

particle minecraft:dust{color:[0.7f,0.85f,1f],scale:2.0f} ~ ~ ~ 2.5 2.5 2.5 0 11 force @a

tag @s add executor
execute as @e[tag=!executor,type=!#svm_ep:technical,distance=..6] run function svm_ep:items/ability/weight_neutralizer/in_range
execute as @s[tag=svm_ep.gravity_user] as @e[tag=!executor,type=!#svm_ep:technical,distance=..6] run scoreboard players add @s svm_ep.e.weight_neutralizer 50

tag @s remove executor