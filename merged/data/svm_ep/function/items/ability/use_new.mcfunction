$scoreboard players operation %cooldown svm_ep.numbers = @s svm_ep.ability.cooldown.$(id)
data remove storage svm_ep:ability temp
$data modify storage svm_ep:ability temp set from storage svm_ep:ability ability.$(id)

#CHECK CD
execute if entity @s[scores={svm_ep.using_move=10001..11000}] run scoreboard players set %cooldown svm_ep.numbers 0
execute if entity @s[scores={svm_ep.using_move=10001..11000}] if data storage svm_ep:ability temp:{fighting_styles_can_use:false} run return 0
execute as @s[type=player] if score %cooldown svm_ep.numbers > @s svm_ep.tick run return run function svm_ep:system/message/on_cooldown
execute as @s[type=!player] if score %cooldown svm_ep.numbers > %WORLD svm_ep.tick run return run function svm_ep:system/message/on_cooldown


#CHECK COST
execute store result score %cost svm_ep.numbers run data get storage svm_ep:ability temp.cost

execute if entity @s[scores={svm_ep.using_move=10001..11000}] run scoreboard players operation %cost svm_ep.numbers /= %2 svm_ep.numbers
execute unless score @s svm_ep.mana >= %cost svm_ep.numbers run return run function svm_ep:system/message/not_enough_mana
scoreboard players operation @s svm_ep.mana -= %cost svm_ep.numbers


#SET COOLDOWN
execute store result score %cooldown svm_ep.numbers run data get storage svm_ep:ability temp.cooldown

execute store result score %item_ability_items_in_hotbar svm_ep.numbers if items entity @s hotbar.* *[minecraft:custom_data~{svm_ep.item_ability:{}}]
execute if score %item_ability_items_in_hotbar svm_ep.numbers matches 9.. run scoreboard players set %item_ability_items_in_hotbar svm_ep.numbers 9

scoreboard players operation %cooldown svm_ep.numbers *= %item_ability_items_in_hotbar svm_ep.numbers

execute store result score %max_cooldown svm_ep.numbers run data get storage svm_ep:ability temp.max_cooldown
execute if score %cooldown svm_ep.numbers > %max_cooldown svm_ep.numbers run scoreboard players operation %cooldown svm_ep.numbers = %max_cooldown svm_ep.numbers


execute as @s[type=player] run scoreboard players operation %cooldown svm_ep.numbers += @s svm_ep.tick
execute as @s[type=!player] run scoreboard players operation %cooldown svm_ep.numbers += %WORLD svm_ep.tick
$scoreboard players operation @s svm_ep.ability.cooldown.$(id) = %cooldown svm_ep.numbers


$function svm_ep:ability/$(id)/use