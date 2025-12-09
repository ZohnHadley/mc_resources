scoreboard players add @s svm_ep.mana_drain 65
scoreboard players add @s svm_ep.using_move 1
scoreboard players add @s svm_ep.used_move 2
scoreboard players add @s svm_ep.p.gravity_ability_02_delay 2
scoreboard players set @s[scores={svm_ep.p.gravity_ability_02_delay=80..}] svm_ep.p.gravity_ability_02_delay 80

effect give @s minecraft:slowness 1 1 true
execute unless entity @s[scores={svm_ep.mana=2..}] run scoreboard players reset @s svm_ep.using_move
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move

tag @s add executor
scoreboard players reset @s svm_ep.numbers
execute unless entity @s[scores={svm_ep.p.gravity_strengthen_type=1..}] anchored eyes positioned ^ ^0.1 ^0.4 run function svm_ep:power/gravity/strengthen/raycast
execute as @s[scores={svm_ep.p.gravity_strengthen_type=1}] anchored eyes positioned ^ ^0.1 ^0.4 run function svm_ep:power/gravity/strengthen/raycast_for_field
execute as @s[scores={svm_ep.p.gravity_strengthen_type=2}] anchored eyes positioned ^ ^0.1 ^0.4 run function svm_ep:power/gravity/strengthen/raycast_for_block
execute as @s[scores={svm_ep.p.gravity_strengthen_type=3}] anchored eyes positioned ^ ^0.1 ^0.4 run function svm_ep:power/gravity/strengthen/raycast_for_mob
tag @s remove executor
scoreboard players reset @s svm_ep.numbers