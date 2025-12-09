tag @s add executor

scoreboard players add @s svm_ep.lifetime 1

execute as @e[tag=svm_ep.flora_user,distance=..60] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id






execute at @s[tag=!explode] run function svm_ep:power/flora/kelp_slap/move
execute at @s[tag=!explode] run function svm_ep:power/flora/kelp_slap/move
execute at @s[tag=!explode] run function svm_ep:power/flora/kelp_slap/move
execute at @s[tag=!explode] if predicate svm_ep:water run function svm_ep:power/flora/kelp_slap/move
execute at @s[tag=!explode] if predicate svm_ep:water run function svm_ep:power/flora/kelp_slap/move
execute at @s[tag=!explode] if predicate svm_ep:water run function svm_ep:power/flora/kelp_slap/move
execute at @s[tag=!explode] if predicate svm_ep:water run function svm_ep:power/flora/kelp_slap/move
execute at @s unless predicate svm_ep:water run tp @s ^ ^ ^ ~ ~5
execute at @s if predicate svm_ep:water run tp @s ^ ^ ^ ~ ~1.4

execute at @s run tp @n[tag=svm_ep.kelp_slap_display,tag=same_id] ~ ~ ~

execute as @s[tag=explode] at @s run function svm_ep:power/flora/kelp_slap/hit

tag @s remove executor
tag @e remove same_id
kill @s[scores={svm_ep.lifetime=40..}]