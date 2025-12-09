

tag @s add executor

#execute on target run tag @s add target
execute on attacker as @e[tag=executor] unless entity @s[scores={svm_ep.p.4fun_ability_01_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/4fun/ability/use/1

tag @s remove executor

function svm_ep:system/get_motion
execute unless entity @s[scores={motion.x=0,motion.z=0}] run scoreboard players add @s svm_ep.walking_frame 1
execute if entity @s[scores={motion.x=0,motion.z=0}] run scoreboard players set @s svm_ep.walking_frame 0

effect give @s minecraft:invisibility infinite 0 true



execute as @s[scores={svm_ep.walking_frame=0}] on passengers run item replace entity @s container.0 with minecraft:blue_dye[item_model="svm_ep:npc/test/body"]
execute as @s[scores={svm_ep.walking_frame=1}] on passengers run item replace entity @s container.0 with minecraft:blue_dye[item_model="svm_ep:npc/test/walk1"]
execute as @s[scores={svm_ep.walking_frame=4}] on passengers run item replace entity @s container.0 with minecraft:blue_dye[item_model="svm_ep:npc/test/walk2"]
execute as @s[scores={svm_ep.walking_frame=6}] on passengers run item replace entity @s container.0 with minecraft:blue_dye[item_model="svm_ep:npc/test/walk3"]
execute as @s[scores={svm_ep.walking_frame=8}] on passengers run item replace entity @s container.0 with minecraft:blue_dye[item_model="svm_ep:npc/test/walk2"]
execute as @s[scores={svm_ep.using_move=1..}] on passengers run item replace entity @s container.0 with minecraft:blue_dye[item_model="svm_ep:npc/test/using_move2"]

scoreboard players set @s[scores={svm_ep.walking_frame=10..}] svm_ep.walking_frame 0

execute on passengers run data modify entity @s Rotation[0] set from entity @n[type=!#svm_ep:technical] Rotation[0]

#tag @e remove target
#tag @e remove attacker