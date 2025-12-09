tag @s add executor
execute summon marker at @s run function svm_ep:power/slime/barrier/summon1
tag @s remove executor
scoreboard players reset @s svm_ep.using_move
execute at @s run playsound minecraft:entity.evoker.cast_spell master @a[distance=..20] ~ ~ ~ 2 1
execute at @s run playsound minecraft:block.slime_block.break master @a[distance=..20] ~ ~ ~ 2 1