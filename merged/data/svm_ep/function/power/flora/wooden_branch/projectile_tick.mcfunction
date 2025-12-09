tag @s add executor

scoreboard players add @s svm_ep.lifetime 10

execute as @e[tag=svm_ep.flora_user] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id


execute as @n[tag=same_id,scores={svm_ep.mana=3..}] if predicate svm_ep:holding_ability run scoreboard players add @s svm_ep.used_move 2
execute as @n[tag=same_id,scores={svm_ep.mana=3..}] if predicate svm_ep:holding_ability run scoreboard players add @s svm_ep.mana_drain 250
execute as @n[tag=same_id,scores={svm_ep.mana=3..}] if predicate svm_ep:holding_ability run scoreboard players add @s svm_ep.p.flora_ability_26_delay 2


execute as @n[tag=same_id,scores={svm_ep.mana=3..}] if predicate svm_ep:holding_ability as @n[tag=executor] run scoreboard players remove @s svm_ep.lifetime 8
execute as @n[tag=same_id,scores={svm_ep.mana=3..}] if predicate svm_ep:holding_ability run data modify entity @n[tag=executor] Rotation set from entity @s Rotation



execute store result score .c svm_ep.tp_to run random value -8..8
execute store result score .v svm_ep.tp_to run random value -8..8
execute at @s run function svm_ep:system/test/macro/rot

execute unless entity @s[scores={svm_ep.p.lightning_electric_string_direction=1..}] store result score @s svm_ep.p.lightning_electric_string_direction run random value 1..4



execute at @s run function svm_ep:power/flora/wooden_branch/tick0
scoreboard players add @s[scores={svm_ep.p.lightning_electric_string_direction=1..4}] svm_ep.p.lightning_electric_string_direction 4

execute at @s run function svm_ep:power/flora/wooden_branch/move
execute at @s run function svm_ep:power/flora/wooden_branch/move

execute at @s run function svm_ep:power/flora/wooden_branch/tick0
execute at @s run function svm_ep:power/flora/wooden_branch/tick0
scoreboard players remove @s[scores={svm_ep.p.lightning_electric_string_direction=5..8}] svm_ep.p.lightning_electric_string_direction 4

execute at @s run function svm_ep:power/flora/wooden_branch/move
execute at @s run function svm_ep:power/flora/wooden_branch/move

execute at @s run function svm_ep:power/flora/wooden_branch/tick0
scoreboard players reset @s svm_ep.p.lightning_electric_string_direction

execute at @s as @e[tag=hitby,distance=..15] at @s run function svm_ep:power/flora/wooden_branch/hitby

execute at @s if predicate svm_ep:chance/25_percent summon marker run function svm_ep:power/flora/wooden_branch/small_branch

playsound minecraft:block.wood.place block @a[distance=..30] ~ ~ ~ 0.75 1.1 0.1


execute at @s if predicate svm_ep:chance/5_percent run function svm_ep:power/flora/tree_big/tree/oak/crown

tag @s remove had_direction
tag @s remove executor
tag @e remove same_id
execute as @s[tag=end] at @s run function svm_ep:power/flora/wooden_branch/end
kill @s[scores={svm_ep.lifetime=120..}]