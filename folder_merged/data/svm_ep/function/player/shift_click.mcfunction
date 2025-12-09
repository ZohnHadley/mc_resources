execute if score @s svm_ep.last_shift_click >= %WORLD input.tick run function svm_ep:player/shift_click_double

scoreboard players operation @s svm_ep.last_shift_click = %WORLD input.tick
scoreboard players operation @s svm_ep.last_shift_click += %double_shift_time svm_ep.world_settings


execute as @s[scores={svm_ep.selected_style_ability=1..}] run scoreboard players set @s svm_ep.using_move 31514357

execute if score eatGoldenFoodWithShift svm_ep.gamerule matches 1 if items entity @s weapon.mainhand *[minecraft:custom_data~{svm_ep.golden_food:1b}] run function svm_ep:items/golden/eat
execute if items entity @s weapon.offhand *[minecraft:custom_data~{svm_ep.item_ability_to_apply:{}}] unless entity @s[scores={svm_ep.using_move=1..}] unless items entity @s weapon.mainhand *[minecraft:custom_data~{svm_ep.item_ability:{}}] run function svm_ep:items/ability_applier/attempt

#execute if items entity @s weapon.mainhand *[minecraft:custom_data~{svm_ep.has_power_ability:1b}] unless entity @s[scores={svm_ep.selected_style_ability=1..}] unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:items/ability/use
execute as @s[scores={svm_ep.ability_input=0}] run function svm_ep:player/use_ability