scoreboard players set @s svm_ep.mana 0
scoreboard players add @s svm_ep.used_move 150
scoreboard players set @s[scores={svm_ep.used_move=..300}] svm_ep.used_move 300
scoreboard players set @s svm_ep.non_power.ability_9995_delay 260
scoreboard players set @s[scores={svm_ep.used_non_power_ability=..300}] svm_ep.used_non_power_ability 300
function svm_ep:non_power/mountain_cut/shoot
