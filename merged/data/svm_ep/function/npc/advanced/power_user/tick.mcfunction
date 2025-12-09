tag @s add executor

execute unless entity @s[scores={svm_ep.p.npc_use_delay=1..}] unless entity @s[scores={svm_ep.using_move=1..}] on target at @s as @e[tag=executor] if entity @s[distance=..7.5] at @s run function svm_ep:npc/advanced/power_user/use_ability
effect give @s[scores={svm_ep.npc_strength=3..}] minecraft:strength 1 0 true
effect give @s minecraft:speed 1 0 true
tag @s remove executor
scoreboard players remove @s[scores={svm_ep.p.npc_use_delay=1..}] svm_ep.p.npc_use_delay 1
scoreboard players remove @s[scores={svm_ep.p.npc_use_delay1=1..}] svm_ep.p.npc_use_delay1 1
scoreboard players remove @s[scores={svm_ep.p.npc_use_delay2=1..}] svm_ep.p.npc_use_delay2 1
scoreboard players remove @s[scores={svm_ep.p.npc_use_delay3=1..}] svm_ep.p.npc_use_delay3 1
function svm_ep:power/ai

