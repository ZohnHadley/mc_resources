data remove storage svm_ep:ability temp
$data modify storage svm_ep:ability temp set from storage svm_ep:ability ability.$(id)
$execute if data storage svm_ep:ability {temp:{custom_use:true}} run return run function svm_ep:ability/$(id)/use with storage svm_ep:mana_display input
$execute unless data storage svm_ep:ability {temp:{require_advancement:false}} as @s[advancements={svm_ep:unlocked_ability/custom/$(id)=false}] run return 0




execute as @s[scores={svm_ep.using_move=1..}] unless data storage svm_ep:ability {temp:{can_use_during_ability:true}} run return run function svm_ep:system/message/using_move





execute store result score %cost svm_ep.numbers run data get storage svm_ep:ability temp.cost



execute unless score @s svm_ep.mana >= %cost svm_ep.numbers run return run function svm_ep:system/message/not_enough_mana



execute store result score %cooldown_to_set svm_ep.numbers run data get storage svm_ep:ability temp.cooldown
#execute store result score %max_cooldown svm_ep.numbers run data get storage svm_ep:ability temp.max_cooldown

$scoreboard players operation %cooldown svm_ep.numbers = @s svm_ep.ability.cooldown.$(id)
#CHECK CD
execute as @s[type=player] if score %cooldown svm_ep.numbers > @s svm_ep.tick run return run function svm_ep:system/message/on_cooldown
execute as @s[type=!player] if score %cooldown svm_ep.numbers > %WORLD svm_ep.tick run return run function svm_ep:system/message/on_cooldown


#SET COOLDOWN
execute as @s[type=player] run scoreboard players operation %cooldown_to_set svm_ep.numbers += @s svm_ep.tick
execute as @s[type=!player] run scoreboard players operation %cooldown_to_set svm_ep.numbers += %WORLD svm_ep.tick
$scoreboard players operation @s svm_ep.ability.cooldown.$(id) = %cooldown_to_set svm_ep.numbers

scoreboard players operation @s svm_ep.mana -= %cost svm_ep.numbers
execute unless data storage svm_ep:ability {temp:{can_use_during_ability:true}} store result score @s svm_ep.ability.using run data get storage svm_ep:ability temp.id_number
$function svm_ep:ability/$(id)/use
