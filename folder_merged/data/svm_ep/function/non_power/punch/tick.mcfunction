scoreboard players set @s svm_ep.check_click 2
scoreboard players reset @s[scores={svm_ep.using_move=..101001}] svm_ep.using_move

scoreboard players add @s svm_ep.non_power.ability_9994_delay 1
scoreboard players add @s[scores={svm_ep.used_non_power_ability=..7}] svm_ep.used_non_power_ability 1
effect give @s slowness 1 3 true
