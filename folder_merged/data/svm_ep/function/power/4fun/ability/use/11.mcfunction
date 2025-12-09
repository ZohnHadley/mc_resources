scoreboard players add @s svm_ep.used_move 750
scoreboard players remove @s svm_ep.mana 50
effect give @s minecraft:slowness 2 3 true
execute at @s anchored eyes run function svm_ep:items/katana/mountain_cut/shoot
scoreboard players set @s svm_ep.p.phase_ability_11_delay 100