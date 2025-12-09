$execute as @s[scores={svm_ep.mana=$(cost)..}] run tag @s add can_use
$scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.ability.cooldown.$(id)
execute as @s[type=player] run scoreboard players operation %cooldown1 svm_ep.numbers -= @s svm_ep.tick
execute as @s[type=!player] run scoreboard players operation %cooldown1 svm_ep.numbers -= %WORLD svm_ep.tick

execute if score %cooldown1 svm_ep.numbers matches 1.. run tag @s remove can_use

$data modify storage svm_ep:ability temp set from storage svm_ep:ability ability.$(id)

data modify storage svm_ep:mana_display input.ability_name set from storage svm_ep:ability temp.display
execute as @s[tag=!can_use] run data modify storage svm_ep:mana_display input.ability_name set from storage svm_ep:ability temp.display_cooldown



execute as @s[tag=can_use] run function svm_ep:items/ability/ui_can with storage svm_ep:mana_display input
execute as @s[tag=!can_use] run function svm_ep:items/ability/ui_cant with storage svm_ep:mana_display input
tag @s remove can_use