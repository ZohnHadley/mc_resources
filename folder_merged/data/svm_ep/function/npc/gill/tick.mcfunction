

tag @s add executor

#execute on target run tag @s add target
execute on target run function svm_ep:system/get_fire
execute on target run tag @s add target
execute on target at @s as @e[tag=executor,distance=..15] at @s unless entity @s[scores={svm_ep.p.fire_ability_01_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/fire/ability/use/1
execute on target at @s as @e[tag=executor,distance=..35] at @s unless entity @s[scores={svm_ep.p.fire_ability_02_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/fire/ability/use/2

execute on target at @s as @e[tag=executor,distance=..40] at @s unless entity @s[scores={svm_ep.p.fire_ability_05_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/fire/ability/use/5
execute on target at @s as @s[scores={fire=1..}] as @e[tag=executor,distance=..4] at @s unless entity @s[scores={svm_ep.p.fire_ability_06_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/fire/ability/use/6
execute on target at @s as @e[tag=executor,distance=1..25] at @s unless entity @s[scores={svm_ep.p.fire_ability_08_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/fire/ability/use/8

execute at @s as @s[scores={svm_ep.using_move=1..}] if entity @n[tag=target,distance=..25] if predicate svm_ep:chance/33_percent run tp @s ~ ~ ~ facing entity @n[tag=target]


execute at @s if entity @n[tag=target,distance=..25] run scoreboard players set @s svm_ep.shifting 21

execute on target run tag @s remove target

execute unless entity @s[scores={svm_ep.using_move=1..}] run scoreboard players set @s svm_ep.mana 100

function svm_ep:system/get_motion
execute unless entity @s[scores={motion.x=0,motion.z=0}] run scoreboard players add @s svm_ep.walking_frame 1
execute if entity @s[scores={motion.x=0,motion.z=0}] run scoreboard players set @s svm_ep.walking_frame 0

effect give @s minecraft:invisibility infinite 0 true


execute as @s[scores={svm_ep.walking_frame=0}] on passengers run item replace entity @s container.0 with minecraft:blue_dye[item_model="svm_ep:npc/gill/body"]
execute as @s[scores={svm_ep.walking_frame=1}] on passengers run item replace entity @s container.0 with minecraft:blue_dye[item_model="svm_ep:npc/gill/walk1"]
execute as @s[scores={svm_ep.walking_frame=4}] on passengers run item replace entity @s container.0 with minecraft:blue_dye[item_model="svm_ep:npc/gill/walk2"]
execute as @s[scores={svm_ep.walking_frame=6}] on passengers run item replace entity @s container.0 with minecraft:blue_dye[item_model="svm_ep:npc/gill/walk3"]
execute as @s[scores={svm_ep.walking_frame=8}] on passengers run item replace entity @s container.0 with minecraft:blue_dye[item_model="svm_ep:npc/gill/walk2"]
execute as @s[scores={svm_ep.using_move=1..}] on passengers run item replace entity @s container.0 with minecraft:blue_dye[item_model="svm_ep:npc/gill/using_move2"]

scoreboard players set @s[scores={svm_ep.walking_frame=10..}] svm_ep.walking_frame 0

execute on passengers run data modify entity @s Rotation[0] set from entity @e[tag=executor,limit=1,sort=nearest] Rotation[0]

tag @s remove executor
#tag @e remove target
#tag @e remove attacker