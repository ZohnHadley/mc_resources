

tag @s add executor



#execute on target run tag @s add target
#execute on attacker as @e[tag=executor] unless entity @s[scores={svm_ep.p.4fun_ability_01_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/4fun/ability/use/1


function svm_ep:system/get_motion
execute unless entity @s[scores={motion.x=0,motion.z=0}] run scoreboard players set @s svm_ep.npc_state 1
execute if entity @s[scores={motion.x=0,motion.z=0}] run scoreboard players set @s svm_ep.npc_state 0

effect give @s minecraft:invisibility infinite 0 true


execute at @s as @e[type=minecraft:item_display,tag=aj.svm_aj.root] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run function svm_ep:npc/test2/as_same_id





tag @s remove executor