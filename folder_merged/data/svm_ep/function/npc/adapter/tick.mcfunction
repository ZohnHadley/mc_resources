tag @s add executor
scoreboard players set %TARGETED_BY svm_ep.numbers 0
scoreboard players set %DISTANCE_FROM_ATTACKER svm_ep.numbers 0


execute on target run function svm_ep:npc/adapter/targeted

execute as @e[tag=!executor,distance=..35,type=!#svm_ep:technical] on target as @s[tag=executor] run scoreboard players add %TARGETED_BY svm_ep.numbers 1
execute on attacker run scoreboard players add @n[tag=executor] svm_ep.npc.adapter.adaptation.damage.progress 1
execute on attacker if entity @s[distance=2..] run scoreboard players add @n[tag=executor] svm_ep.npc.adapter.attacked_by_distance 1
execute on attacker if entity @s[distance=20..] run scoreboard players add @n[tag=executor] svm_ep.npc.adapter.attacked_by_distance 2
execute on attacker if entity @s[distance=30..] run scoreboard players add @n[tag=executor] svm_ep.npc.adapter.attacked_by_distance 6
execute on attacker run scoreboard players add @n[tag=executor,nbt={HurtTime:10s}] svm_ep.npc.adapter.adaptation.damage.progress 13

execute if score @s svm_ep.npc.adapter.attacked_by_distance >= @s svm_ep.npc.adapter.adaptation.distance.progress run function svm_ep:npc/adapter/adapt/distance/setup
execute if score @s svm_ep.npc.adapter.adaptation.damage.progress >= @s svm_ep.npc.adapter.adaptation.damage.progress_to_make run function svm_ep:npc/adapter/adapt/damage/setup
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{effects:{"minecraft:poison":{}}}} run function svm_ep:npc/adapter/adapt/poison/tick
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_on_fire:1b}}} run function svm_ep:npc/adapter/adapt/fire/tick
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{flags:{is_on_ground:0b}}} run function svm_ep:npc/adapter/adapt/not_on_ground/tick


execute as @s[scores={svm_ep.npc.adapter.adapted=1..}] run function svm_ep:npc/adapter/adapted

tag @s remove executor
