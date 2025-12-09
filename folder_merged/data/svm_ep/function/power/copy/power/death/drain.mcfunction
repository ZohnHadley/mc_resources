scoreboard players add @s svm_ep.p.copy_ability_35_drain 8
execute unless entity @s[scores={svm_ep.p.copy_ability_35_drain=100..}] run return 0
scoreboard players remove @s svm_ep.p.copy_ability_35_drain 100
scoreboard players remove @s svm_ep.p.copy_ability_35_count 1

title @s times 4 16 4
title @s title [{"text":" "}]
title @s subtitle [{"text":"| ","color":"#989898"},{"text":"Death Power uses left: ","color":"#999999"},{"score":{"name":"@s","objective":"svm_ep.p.copy_ability_35_count"},"color":"red"},{"text":" | ","color":"#989898"}]