tag @s add executor

scoreboard players add @s svm_ep.lifetime 1

execute as @e[scores={svm_ep.entity_id=1..}] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id


playsound minecraft:entity.generic.extinguish_fire master @a[distance=..55] ~ ~ ~ 0.85 0 0.2
playsound minecraft:entity.blaze.shoot master @a[distance=..55] ~ ~ ~ 0.5 0.9 0.2
execute at @s run function svm_ep:power/copy/dragons_breath/move
execute at @s run function svm_ep:power/copy/dragons_breath/move
execute at @s run function svm_ep:power/copy/dragons_breath/move

execute as @e[tag=hitby] at @s run function svm_ep:power/copy/dragons_breath/hitby





tag @s remove executor
tag @e remove same_id
kill @s[scores={svm_ep.lifetime=25..}]