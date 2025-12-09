execute as @s[scores={svm_ep.selected_ability=9999}] run scoreboard players set @s svm_ep.menu 1
execute as @s[scores={svm_ep.selected_ability=9998}] run function svm_ep:menu/toggle_power
execute as @s[scores={svm_ep.selected_ability=9997}] run function svm_ep:menu/hotbar/switch