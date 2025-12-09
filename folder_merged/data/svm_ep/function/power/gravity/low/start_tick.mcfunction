effect give @s minecraft:slowness 1 1 true
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move
scoreboard players set @s svm_ep.p.gravity_ability_05_delay 10

#execute as @s[scores={svm_ep.using_move=650}] run function svm_ep:power/gravity/low/create_zone
execute as @s[scores={svm_ep.using_move=660}] run function svm_ep:power/gravity/low/create_zone
execute unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/gravity/low/switch
