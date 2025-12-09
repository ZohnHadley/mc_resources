attribute @s minecraft:scale modifier add svm_ep.forest_dog 0.5 add_multiplied_total
attribute @s minecraft:movement_speed modifier add svm_ep.forest_dog 0.75 add_multiplied_total
attribute @s minecraft:attack_damage modifier add svm_ep.forest_dog 1.75 add_multiplied_total
attribute @s minecraft:max_health modifier add svm_ep.forest_dog 3.75 add_multiplied_total
effect give @s minecraft:instant_health 10 100 true
effect give @s minecraft:resistance infinite 0 true
effect give @s minecraft:regeneration infinite 1 true
execute at @s run particle minecraft:dust{color:[0.05f,0.05f,0.1f],scale:4} ~ ~ ~ 0.86 0.86 0.86 0 50
execute at @s run playsound minecraft:block.vine.break master @a ~ ~ ~ 2 0
execute at @s run particle minecraft:smoke ~ ~ ~ 0 0 0 0.5 150
data modify entity @s Owner set from entity @n[tag=executor] UUID
tag @s add svm_ep.forest_dog