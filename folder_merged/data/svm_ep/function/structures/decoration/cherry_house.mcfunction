execute at @s if predicate svm_ep:chance/30_percent run function svm_ep:npc/spawn/cherry_guardian
execute store result score @s svm_ep.numbers run random value 1..5

execute at @s[scores={svm_ep.numbers=1}] run setblock ~ ~ ~ minecraft:potted_cherry_sapling
execute at @s[scores={svm_ep.numbers=2}] run setblock ~ ~ ~ minecraft:cherry_leaves[persistent=true,distance=1,waterlogged=false]
execute at @s[scores={svm_ep.numbers=3}] run setblock ~ ~ ~ minecraft:cherry_log
execute at @s[scores={svm_ep.numbers=4}] run setblock ~ ~ ~ minecraft:stripped_bamboo_block
execute at @s[scores={svm_ep.numbers=5}] run setblock ~ ~ ~ minecraft:bamboo_fence

execute at @s run playsound minecraft:block.wood.place master @a[distance=..20] ~ ~ ~ 2 0.7