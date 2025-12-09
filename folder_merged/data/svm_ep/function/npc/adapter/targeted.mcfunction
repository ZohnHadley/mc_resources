
tag @s add target

scoreboard players add @s svm_ep.npc.adapter.targeted_by 1

execute as @n[tag=executor] run function svm_ep:npc/adapter/has_target
tag @s remove target
execute on attacker run scoreboard players add @s svm_ep.npc.adapter.adaptation.strength.progress 2
execute as @s[scores={svm_ep.npc.adapter.targeted_by=..170}] run return 0
scoreboard players remove @s svm_ep.npc.adapter.targeted_by 140

execute at @s run scoreboard players add @n[tag=executor,distance=..5] svm_ep.npc.adapter.adaptation.strength.progress 72
scoreboard players add @n[tag=executor] svm_ep.npc.adapter.adaptation.strength.progress 25
