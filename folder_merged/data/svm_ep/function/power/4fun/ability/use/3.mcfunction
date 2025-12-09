scoreboard players set @s svm_ep.using_move 404
scoreboard players remove @s svm_ep.mana 1
scoreboard players set @s[scores={svm_ep.used_move=..200}] svm_ep.used_move 200

effect give @s minecraft:speed 1 1 true
effect give @s minecraft:haste 1 1 true

scoreboard players set @s svm_ep.p.phase_ability_03_delay 1