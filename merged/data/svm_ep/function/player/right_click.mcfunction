scoreboard players reset @s svm_ep.r.click

#POWERS
execute as @s[tag=svm_ep.power_user] run function svm_ep:power/right_click




execute if items entity @s weapon.mainhand *[minecraft:custom_data~{svm_ep.chooser:1b}] run function svm_ep:items/chooser/right_click
#FIGHTING STYLE USER
execute if items entity @s weapon.offhand *[minecraft:custom_data~{svm_ep.item:{id:sharpening_pebble}}] run function svm_ep:items/sharpening_pebble/use


#ITEMS
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{svm_ep.ice_breaker:1b}] unless entity @s[scores={svm_ep.using_move=1..}] as @s[scores={svm_ep.mana=30..}] run function svm_ep:items/hammer/ice/right_click
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{svm_ep.hammer:1b}] run function svm_ep:items/hammer/right_click
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{svm_ep.tengu_fan:1b}] run function svm_ep:items/tengu/right_click
execute if items entity @s weapon.mainhand *[minecraft:custom_data~{svm_ep.bamboo:1b}] unless entity @s[scores={svm_ep.bamblock=1..}] run function svm_ep:items/bamboo/use




function #svm_ep:right_click
