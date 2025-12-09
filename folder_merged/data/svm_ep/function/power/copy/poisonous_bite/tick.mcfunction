scoreboard players add @s svm_ep.p.copy_ability_01_delay 1
execute at @s run particle minecraft:dust{color:[0.12f,0.4f,0.1f],scale:1} ~ ~1 ~ 0.3 0.65 0.3 0.1 3
scoreboard players set @s svm_ep.attack_entity_action 1

execute at @s run particle minecraft:dust{color:[0.07f,0.2f,0.05f],scale:1} ~ ~1 ~ 0.4 0.75 0.4 0.1 3
execute as @s[scores={svm_ep.using_move=..402}] at @s run scoreboard players reset @s svm_ep.using_move
