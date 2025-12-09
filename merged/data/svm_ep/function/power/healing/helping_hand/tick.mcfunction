scoreboard players add @s svm_ep.p.healing_ability_05_delay 1

execute as @s[scores={svm_ep.using_move=473..}] run return 0
scoreboard players reset @s svm_ep.using_move
scoreboard players set %entity_count svm_ep.numbers 0

tag @s add executor
execute as @e[distance=..100,type=!#svm_ep:technical,scores={svm_ep.p.healing_marked_by=1..}] if score @s svm_ep.p.healing_marked_by = @n[tag=executor] svm_ep.entity_id run scoreboard players add %entity_count svm_ep.numbers 1
tag @s remove executor
execute unless score %entity_count svm_ep.numbers matches 1.. run return run function svm_ep:system/message/no_target


scoreboard players set @s svm_ep.p.healing_ability_05_delay 1800
scoreboard players operation @s[type=player] svm_ep.p.healing_ability_05_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.healing_ability_05_delay += %WORLD svm_ep.tick






function svm_ep:power/healing/regenerational_aura/ring
particle minecraft:end_rod ~ ~1 ~ 0 0 0 1.4 100
playsound minecraft:block.respawn_anchor.charge ambient @a[distance=..20] ~ ~ ~ 1.4 1.4
tag @s add executor
execute as @e[distance=..100,type=!#svm_ep:technical,scores={svm_ep.p.healing_marked_by=1..}] if score @s svm_ep.p.healing_marked_by = @n[tag=executor] svm_ep.entity_id run tag @s add same_id


execute positioned ~ ~1 ~ as @e[tag=same_id,sort=nearest] run function svm_ep:power/healing/helping_hand/shoot

tag @s remove executor
tag @e remove same_id


