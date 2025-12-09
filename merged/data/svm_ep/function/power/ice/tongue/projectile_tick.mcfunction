tag @s add executor

scoreboard players add @s svm_ep.lifetime 31

execute as @e[tag=svm_ep.ice_user] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id


execute as @n[tag=same_id,scores={svm_ep.mana=3..}] if predicate svm_ep:holding_ability run scoreboard players add @s svm_ep.used_move 2
execute as @n[tag=same_id,scores={svm_ep.mana=3..}] if predicate svm_ep:holding_ability run scoreboard players add @s svm_ep.mana_drain 220
execute as @n[tag=same_id,scores={svm_ep.mana=3..}] if predicate svm_ep:holding_ability run scoreboard players add @s svm_ep.p.ice_ability_06_delay 2


execute as @n[tag=same_id,scores={svm_ep.mana=3..}] if predicate svm_ep:holding_ability as @n[tag=executor] run scoreboard players remove @s svm_ep.lifetime 30
execute as @n[tag=same_id,scores={svm_ep.mana=3..}] if predicate svm_ep:holding_ability run data modify entity @n[tag=executor] Rotation set from entity @s Rotation




execute at @s run function svm_ep:power/ice/tongue/move
execute at @s run function svm_ep:power/ice/tongue/move
execute at @s as @e[tag=hitby,distance=..15] at @s run function svm_ep:power/ice/tongue/hitby

playsound minecraft:block.glass.break block @a[distance=..30] ~ ~ ~ 0.75 1.1 0.1

tag @s remove executor
tag @e remove same_id
execute at @s unless block ~ ~ ~ #svm_ep:no_physical_hitbox unless block ~ ~ ~ #minecraft:ice run function svm_ep:power/ice/tongue/end
kill @s[scores={svm_ep.lifetime=120..}]