
$scoreboard players operation @s svm_ep.selected_ability = @s svm_ep.ability$(slot)
$scoreboard players operation @s svm_ep.selected_ability.sneak = @s svm_ep.ability$(slot).sneak
$scoreboard players operation @s svm_ep.selected_ability.sprint = @s svm_ep.ability$(slot).sprint
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{svm_ep.item_ability:{}}] unless entity @s[scores={svm_ep.p.silenced=1}] run scoreboard players set @s svm_ep.selected_ability 10000
scoreboard players operation @s svm_ep.selected_ability.general = @s svm_ep.selected_ability
scoreboard players set @s[scores={svm_ep.ability_input=0}] svm_ep.selected_ability.sneak 0


#execute as @s[scores={input.sneak_time=1..}] run function svm_ep:player/select_ability/sneak
#execute as @s[scores={input.sprint_time=1..}] run function svm_ep:player/select_ability/sprint