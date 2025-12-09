advancement revoke @s only svm_ep:eat/golden_bone
scoreboard players add @s svm_ep.mana_boost 240
effect give @s resistance 10 0 true
effect clear @s poison
function svm_ep:items/golden/eat_generic
execute at @s run playsound minecraft:block.beacon.activate master @a[distance=..30] ~ ~1 ~ 2 1.7
execute at @s run particle minecraft:end_rod ~ ~0.2 ~ 0 0 0 0.83 100
execute at @s anchored eyes positioned ^ ^-0.15 ^0.38 run particle minecraft:item{item:gold_ingot} ~ ~ ~ 0.05 0.05 0.05 0.08 10