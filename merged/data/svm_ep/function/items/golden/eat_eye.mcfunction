advancement revoke @s only svm_ep:eat/golden_eye



scoreboard players add @s[scores={svm_ep.mana_max=..150}] svm_ep.mana_max 2
scoreboard players add @s[scores={svm_ep.mana_max=..200}] svm_ep.mana_max 2
scoreboard players add @s[scores={svm_ep.mana_max=..275}] svm_ep.mana_max 2
scoreboard players add @s[scores={svm_ep.mana_max=..350}] svm_ep.mana_max 2
scoreboard players add @s svm_ep.mana_max 5
execute if predicate svm_ep:chance/25_percent run scoreboard players add @s svm_ep.mana_max 1
execute if predicate svm_ep:chance/25_percent run scoreboard players add @s svm_ep.mana_max 1
execute if score @s svm_ep.mana_max >= maxMana svm_ep.gamerule run scoreboard players operation @s svm_ep.mana_max = maxMana svm_ep.gamerule
function svm_ep:items/golden/eat_generic
execute at @s run playsound minecraft:block.beacon.activate master @a[distance=..30] ~ ~1 ~ 2 1.7
execute at @s run particle minecraft:end_rod ~ ~0.2 ~ 0 0 0 0.83 100
execute at @s anchored eyes positioned ^ ^-0.15 ^0.38 run particle minecraft:item{item:gold_ingot} ~ ~ ~ 0.05 0.05 0.05 0.08 10