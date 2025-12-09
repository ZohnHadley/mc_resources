effect give @s minecraft:slowness 1 1 true
particle minecraft:raid_omen ~ ~1 ~ 0.2 0.2 0.2 0.1 1
execute as @s[scores={svm_ep.using_move=193..}] run return 0
execute unless predicate svm_ep:holding_ability at @s anchored eyes positioned ^ ^-0.5 ^0.75 run return run function svm_ep:power/death/cleaving_cut/cut
execute as @s[scores={svm_ep.using_move=..110}] at @s anchored eyes positioned ^ ^-0.5 ^0.75 run return run function svm_ep:power/death/cleaving_cut/cut

scoreboard players add @s svm_ep.mana_drain 150
scoreboard players add @s svm_ep.p.death_ability_03_delay 2








particle minecraft:smoke ~ ~0.1 ~ 2.5 0.1 2.5 0.1 10
particle minecraft:ash ~ ~0.1 ~ 2.5 2.5 2.5 0.1 5

