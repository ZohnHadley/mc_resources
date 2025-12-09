scoreboard players add @s svm_ep.p.flora_ability_06_delay 3
scoreboard players add @s svm_ep.mana_drain 125
scoreboard players add @s svm_ep.used_move 3
scoreboard players add @s svm_ep.using_move 1

scoreboard players operation @s svm_ep.charge_length += %tree_charge_speed svm_ep.world_settings

scoreboard players add @s[scores={svm_ep.charge_length=100..}] svm_ep.p.flora_tree_size 1
scoreboard players remove @s[scores={svm_ep.charge_length=100..}] svm_ep.charge_length 100


scoreboard players operation @s svm_ep.numbers = @s svm_ep.p.flora_tree_size
scoreboard players operation @s svm_ep.numbers *= %100 svm_ep.numbers
scoreboard players operation @s svm_ep.numbers += @s svm_ep.charge_length
scoreboard players operation @s svm_ep.numbers /= %tree_max_size svm_ep.world_settings

title @s times 0t 5t 5t
title @s title [{"text":""}]
title @s subtitle [{"text":"| ","color":"gray"},{"score":{"name":"@s","objective":"svm_ep.numbers"},"color":"green"},{"text":"%","color":"green"},{"text":" |","color":"gray"}]


execute if score @s svm_ep.p.flora_tree_size >= %tree_max_size svm_ep.world_settings run scoreboard players add @s svm_ep.charge_length2 1
execute as @s[scores={svm_ep.charge_length2=30..}] run return run function svm_ep:power/flora/forestify/start
execute if score @s svm_ep.p.flora_tree_size >= %tree_max_size svm_ep.world_settings run scoreboard players operation @s svm_ep.p.flora_tree_size = %tree_max_size svm_ep.world_settings

execute as @s[scores={svm_ep.mana=..2}] run scoreboard players set @s svm_ep.using_move 1405
execute unless predicate svm_ep:holding_ability run scoreboard players set @s svm_ep.using_move 1405

execute as @s[scores={svm_ep.using_move=1401..}] run scoreboard players operation @s svm_ep.using_move += @s svm_ep.numbers
execute as @s[scores={svm_ep.using_move=1410..}] run scoreboard players set @s svm_ep.using_move 1410

effect give @s minecraft:slowness 1 1 true





