execute as @s[scores={svm_ep.selected_ability=9997..9999}] run return run function svm_ep:non_power/ui
execute as @s[scores={svm_ep.p.silenced=1}] run return 0
execute as @s[scores={svm_ep.selected_ability=10000}] run function svm_ep:items/ability/held
execute as @s[scores={svm_ep.selected_ability=10001..}] run return run function svm_ep:ability/held
execute as @s[tag=svm_ep.power_user] run function svm_ep:power/ui