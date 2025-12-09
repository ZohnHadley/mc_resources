execute as @s[predicate=svm_ep:time_stopped] run return 0

execute as @s[scores={svm_ep.selected_ability=10000}] unless entity @s[scores={svm_ep.selected_style_ability=1..}] run function svm_ep:items/ability/use_new with entity @s SelectedItem.components."minecraft:custom_data".'svm_ep.item_ability'

execute as @s[scores={svm_ep.selected_ability=9997..9999}] run function svm_ep:non_power/use
execute as @s[scores={svm_ep.selected_ability=10001..}] unless entity @s[scores={svm_ep.p.silenced=1}] run function svm_ep:ability/use
execute as @s[tag=svm_ep.power_user] unless entity @s[scores={svm_ep.p.silenced=1}] run function svm_ep:power/use

