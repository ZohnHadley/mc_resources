advancement revoke @s only svm_ep:eat/golden_beetroot
scoreboard players set @s svm_ep.golden_beetroot_boost 72000

function svm_ep:items/golden/eat_generic
execute at @s run playsound minecraft:block.beacon.activate master @a[distance=..30] ~ ~1 ~ 2 1.7
execute at @s run particle minecraft:end_rod ~ ~0.2 ~ 0 0 0 0.83 100
execute at @s anchored eyes positioned ^ ^-0.15 ^0.38 run particle minecraft:item{item:gold_ingot} ~ ~ ~ 0.05 0.05 0.05 0.08 10