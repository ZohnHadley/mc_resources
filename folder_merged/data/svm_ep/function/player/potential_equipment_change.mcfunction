execute as @s[scores={svm_ep.ability_input=1}] run function svm_ep:player/ability_input/1/toggle_based_off_item
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{svm_ep.item_ability:{}}] unless entity @s[scores={svm_ep.selected_ability=10000}] unless entity @s[scores={svm_ep.p.silenced=1}] run return run function svm_ep:player/update_slot
#execute as @s[scores={svm_ep.selected_ability=10000}] unless items entity @s weapon.mainhand *[minecraft:custom_data~{svm_ep.item_ability:{}}] run function svm_ep:player/update_slot
