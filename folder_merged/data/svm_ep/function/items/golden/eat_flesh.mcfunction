advancement revoke @s only svm_ep:eat/golden_flesh

effect give @s minecraft:saturation 1 6 true
effect give @s minecraft:glowing 1 6 true
execute at @s run playsound minecraft:block.beacon.activate master @a[distance=..30] ~ ~1 ~ 2 1.7
execute at @s run particle minecraft:end_rod ~ ~0.2 ~ 0 0 0 0.83 100
execute at @s anchored eyes positioned ^ ^-0.15 ^0.38 run particle minecraft:item{item:gold_ingot} ~ ~ ~ 0.05 0.05 0.05 0.08 10
function svm_ep:items/golden/eat_generic


execute as @s[tag=svm_ep.power_user] run execute store result score @s svm_ep.numbers run random value 1..3
execute as @s[tag=svm_ep.power_user] run scoreboard players operation @s svm_ep.ability_points += @s svm_ep.numbers
execute as @s[tag=svm_ep.power_user] run tellraw @s[scores={svm_ep.numbers=2..}] [{"text":"| ","color":"gray"},{"text":"Gained","color":"red"},{"text":": ","color":"gray"},{"score":{"name":"@s","objective":"svm_ep.numbers"},"bold":true,"color":"white"},{"text":" ability points","color":"red"}]
execute as @s[tag=svm_ep.power_user] run tellraw @s[scores={svm_ep.numbers=1}] [{"text":"| ","color":"gray"},{"text":"Gained","color":"red"},{"text":": ","color":"gray"},{"score":{"name":"@s","objective":"svm_ep.numbers"},"bold":true,"color":"white"},{"text":" ability point","color":"red"}]

execute as @s[tag=!svm_ep.power_user] run function svm_ep:power/roll
