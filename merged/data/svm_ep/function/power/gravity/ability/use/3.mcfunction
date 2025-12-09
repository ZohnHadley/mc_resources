execute unless entity @e[tag=svm_ep.gravity_can_manipulate] run return 0

scoreboard players set @s svm_ep.using_move 450
scoreboard players remove @s svm_ep.mana 20
scoreboard players set @s svm_ep.p.gravity_ability_03_delay 5
