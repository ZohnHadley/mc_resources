scoreboard players add @s svm_ep.using_move 1
scoreboard players add @s svm_ep.p.copy_ability_02_delay 1

effect give @s blindness 2 0 true
effect give @s minecraft:resistance 1 3 true

execute unless entity @s[scores={svm_ep.mana=1..}] run scoreboard players reset @s svm_ep.using_move
execute unless entity @s[scores={svm_ep.p.copy_ability_02_count=1..}] run scoreboard players reset @s svm_ep.using_move
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move

execute unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/copy/armadillo_armor/end


scoreboard players add @s svm_ep.p.copy_ability_02_drain 13
execute unless entity @s[scores={svm_ep.p.copy_ability_02_drain=100..}] run return 0
scoreboard players remove @s svm_ep.p.copy_ability_02_drain 100
scoreboard players remove @s svm_ep.p.copy_ability_02_count 1