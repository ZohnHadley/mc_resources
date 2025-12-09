data remove storage svm_ep:ability temp
$data modify storage svm_ep:ability temp set from storage svm_ep:ability ability.$(id)
$execute if data storage svm_ep:ability {temp:{custom_ui:true}} run return run function svm_ep:ability/$(id)/ui with storage svm_ep:mana_display input
$execute unless data storage svm_ep:ability {temp:{require_advancement:false}} as @s[advancements={svm_ep:unlocked_ability/custom/$(id)=false}] run return 0
$scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.ability.cooldown.$(id)


#HERE WE HAVE THE ABILITY ID

execute store result score %COST svm_ep.numbers run data get storage svm_ep:ability temp.cost


execute if score @s svm_ep.mana >= %COST svm_ep.numbers run tag @s add can_use
execute as @s[type=player] run scoreboard players operation %cooldown1 svm_ep.numbers -= @s svm_ep.tick
execute as @s[type=!player] run scoreboard players operation %cooldown1 svm_ep.numbers -= %WORLD svm_ep.tick

execute if score %cooldown1 svm_ep.numbers matches 1.. run tag @s remove can_use


data modify storage svm_ep:mana_display input.ability_name set from storage svm_ep:ability temp.display
execute as @s[tag=!can_use] run data modify storage svm_ep:mana_display input.ability_name set from storage svm_ep:ability temp.display_cooldown



execute as @s[tag=can_use] run function svm_ep:ability/ui_can with storage svm_ep:mana_display input
execute as @s[tag=!can_use] run function svm_ep:ability/ui_cant with storage svm_ep:mana_display input

tag @s remove can_use