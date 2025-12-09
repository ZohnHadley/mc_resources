scoreboard players add @s svm_ep.p.time_stop_charge 2
scoreboard players add @s svm_ep.used_move 18
scoreboard players add @s svm_ep.using_move 1
scoreboard players add @s svm_ep.mana_drain 175
scoreboard players add @s svm_ep.p.time_ability_01_delay 4
execute if score @s svm_ep.p.time_stop_charge >= maxTimeStopTime svm_ep.gamerule run scoreboard players reset @s svm_ep.using_move

execute at @s run particle minecraft:enchant ~ ~2 ~ 0 0 0 10 100
execute unless entity @s[scores={svm_ep.mana=1..}] run scoreboard players reset @s svm_ep.using_move
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move

scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.time_stop_charge
function svm_ep:power/delay
title @s times 0 2 4
title @s title [{"text":" "}]
title @s subtitle ["",{"text":"| ","color":"#989898"},{"score":{"name":"%cooldown1","objective":"svm_ep.numbers"},"color":"red"},{"text":".","color":"red"},{"score":{"name":"%cooldown2","objective":"svm_ep.numbers"},"color":"red"},{"text":" | ","color":"#989898"}]


execute unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/time/stop/end_charge
