scoreboard players set @s svm_ep.selected_ability 10000
scoreboard players set @s svm_ep.using_move 31514357

execute store result score %items_in_slot svm_ep.numbers if items entity @s weapon.mainhand *
execute if score %items_in_slot svm_ep.numbers matches 2.. run return run function svm_ep:system/message/too_many_items_in_slot
$function svm_ep:items/ability_applier/apply with storage svm_ep:ability ability.$(id)






#CONSUME
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{svm_ep.item_ability:{}}] run item modify entity @s weapon.offhand svm_ep:consume