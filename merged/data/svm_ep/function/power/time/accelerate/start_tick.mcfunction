scoreboard players add @s svm_ep.e.accelerated 1
scoreboard players set @s svm_ep.effect 1
scoreboard players add @s[scores={svm_ep.using_move=..190}] svm_ep.e.accelerated 6
scoreboard players add @s[scores={svm_ep.using_move=..190}] svm_ep.used_move 8
scoreboard players add @s[scores={svm_ep.using_move=..190}] svm_ep.mana_drain 67
scoreboard players set @s[scores={svm_ep.using_move=..150}] svm_ep.using_move 150

execute if score @s svm_ep.e.accelerated >= maxAcceleratedTime svm_ep.gamerule run function svm_ep:power/time/accelerate/max_length

execute at @s run particle minecraft:enchant ~ ~2 ~ 1 1 1 10 5
execute unless entity @s[scores={svm_ep.mana=1..}] run tag @s add explode
execute unless predicate svm_ep:holding_ability run tag @s add explode



execute as @s[tag=explode,scores={svm_ep.using_move=191..}] at @s run function svm_ep:power/time/accelerate/accelerate

scoreboard players reset @s[tag=explode] svm_ep.using_move
tag @s remove explode