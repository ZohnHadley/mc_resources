scoreboard players add @s svm_ep.p.flora_ability_24_delay 2

scoreboard players add @s svm_ep.using_move 1

scoreboard players add @s svm_ep.mana_drain 15
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move
execute unless entity @s[scores={svm_ep.mana=2..}] run scoreboard players reset @s svm_ep.using_move


effect give @e[scores={svm_ep.p.flora_flower_field_effect=1},type=!#svm_ep:technical,distance=..5] minecraft:regeneration 1 3 true
effect give @e[type=!#svm_ep:technical,distance=..5] minecraft:slowness 1 3 true

scoreboard players add @e[type=!#svm_ep:technical,distance=..5] svm_ep.p.flora_flower_field_effect 1
#execute as @e[type=!#svm_ep:technical,distance=..5,scores={svm_ep.p.flora_flower_field_effect=25..}] run effect give @s minecraft:instant_health 1 0
scoreboard players reset @e[type=!#svm_ep:technical,distance=..5,scores={svm_ep.p.flora_flower_field_effect=25..}] svm_ep.p.flora_flower_field_effect


particle minecraft:heart ~ ~ ~ 2 2 2 0 1
particle minecraft:dust{color:[0.05f,0.03f,0f],scale:1} ~ ~ ~ 2 0.1 2 0 1
particle minecraft:dust{color:[0.15f,0.1f,0f],scale:1} ~ ~ ~ 2 0.1 2 0 1
particle minecraft:dust{color:[0.4f,0.25f,0f],scale:1} ~ ~ ~ 2 0.1 2 0 1
particle minecraft:dust{color:[18000000f,0.25f,0.3f],scale:2} ~ ~ ~ 2 0.1 2 0 1
particle minecraft:dust{color:[1f,0.2f,0.25f],scale:2.3} ~ ~ ~ 2 0.1 2 0 1
particle minecraft:dust{color:[0f,1f,0.3f],scale:1} ~ ~ ~ 2 0.1 2 0 3

particle minecraft:block{block_state:short_grass} ~ ~ ~ 2 0.2 2 0 20
place feature minecraft:flower_default
place feature minecraft:flower_plain
place feature minecraft:patch_grass

particle minecraft:crit ~ ~ ~ 1 1 1 0.85 2

