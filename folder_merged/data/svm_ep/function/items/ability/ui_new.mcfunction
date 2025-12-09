scoreboard players set @s svm_ep.selected_ability 10000
execute unless items entity @s weapon.mainhand *[minecraft:custom_data~{svm_ep.item_ability:{}}] run return run function svm_ep:player/update_slot
$function svm_ep:items/ability/check_ability_new with storage svm_ep:ability ability.$(id)