execute if predicate svm_ep:chance/25_percent run damage @s[tag=!svm_ep.void_user] 1.5 minecraft:cramming
execute at @s run particle minecraft:smoke ~ ~ ~ 2 2 2 0.25 5
execute at @s[type=player] run particle minecraft:smoke ~ ~ ~ 2 2 2 0.25 50
effect give @s minecraft:slow_falling 1 0 true
execute if predicate svm_ep:chance/15_percent run effect give @s minecraft:levitation 1 3 true
scoreboard players add @s svm_ep.p.void_in_black_hole 1
scoreboard players add @s[tag=svm_ep.void_user] svm_ep.p.void_ability_05_delay 1
execute as @s[scores={svm_ep.p.void_in_black_hole=500..}] run function svm_ep:power/void/black_hole/tp_out

execute as @s[tag=!svm_ep.void_user] run return 0
execute if predicate svm_ep:chance/25_percent run damage @s 0.75 minecraft:cramming
scoreboard players add @s svm_ep.mana_charge 250

