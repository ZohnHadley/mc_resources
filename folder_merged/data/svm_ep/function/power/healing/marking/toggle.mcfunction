
playsound minecraft:block.amethyst_block.place master @a[distance=..10] ~ ~ ~ 2 0

tag @s add executor
execute as @e[distance=..100,type=!#svm_ep:technical,scores={svm_ep.p.healing_marked_by=1..}] if score @s svm_ep.p.healing_marked_by = @n[tag=executor] svm_ep.entity_id run scoreboard players reset @s svm_ep.p.healing_marked_by
tag @s remove executor
scoreboard players reset @s svm_ep.using_move