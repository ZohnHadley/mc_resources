

scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.death_ability_04_delay
function svm_ep:system/cooldown/calculate

execute as @s[type=player,advancements={svm_ep:unlocked_ability/death/4=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=100..}] run return run function svm_ep:system/message/not_enough_mana
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

scoreboard players reset @s svm_ep.numbers
tag @s add executor
execute at @s anchored eyes positioned ^ ^0.1 ^0.4 run function svm_ep:power/death/memento_mori/raycast
tag @s remove executor

execute as @s[scores={svm_ep.numbers=4}] run return run function svm_ep:system/message/no_target


scoreboard players set @s svm_ep.p.death_ability_04_delay 500
execute as @s[scores={svm_ep.p.death_unsealed_reaper=1..}] run scoreboard players operation @s svm_ep.p.death_ability_04_delay *= %unsealed_reaper_cooldown_multiplier svm_ep.world_settings
execute as @s[scores={svm_ep.p.death_unsealed_reaper=1..}] run scoreboard players operation @s svm_ep.p.death_ability_04_delay /= %unsealed_reaper_cooldown_divisor svm_ep.world_settings
scoreboard players operation @s[type=player] svm_ep.p.death_ability_04_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.death_ability_04_delay += %WORLD svm_ep.tick



scoreboard players add @s svm_ep.used_move 200
scoreboard players remove @s svm_ep.mana 100

effect give @s minecraft:blindness 2 0 true
effect give @s minecraft:slowness 2 4 true
effect give @s minecraft:darkness 3 1 true

#>>
