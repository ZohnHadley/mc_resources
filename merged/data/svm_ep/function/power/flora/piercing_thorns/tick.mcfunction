scoreboard players add @s svm_ep.p.flora_ability_18_delay 2
scoreboard players add @s svm_ep.mana_drain 350
scoreboard players add @s svm_ep.used_move 3

execute unless entity @s[scores={svm_ep.mana=2..}] run scoreboard players reset @s svm_ep.using_move
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move


effect give @s minecraft:slowness 1 2 true

scoreboard players reset @s[scores={svm_ep.using_move=..1040}] svm_ep.using_move



tag @s add executor
execute at @s anchored eyes positioned ^ ^ ^2.5 run function svm_ep:power/flora/piercing_thorns/effect
tag @s remove executor