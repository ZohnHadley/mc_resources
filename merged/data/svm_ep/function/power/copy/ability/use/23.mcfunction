scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.copy_ability_23_delay
function svm_ep:system/cooldown/calculate

execute unless entity @s[scores={svm_ep.mana=25..}] run return run function svm_ep:system/message/not_enough_mana
execute unless entity @s[scores={svm_ep.p.copy_ability_23_count=1..}] run return run function svm_ep:system/message/copy_no_uses
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move



scoreboard players add @s svm_ep.used_move 168
scoreboard players remove @s svm_ep.mana 30
scoreboard players remove @s svm_ep.p.copy_ability_23_count 1


scoreboard players set @s svm_ep.p.copy_ability_23_delay 180
execute if predicate svm_ep:thunder run scoreboard players operation @s svm_ep.p.copy_ability_23_delay *= %thunder_passive_cooldown_multiplier svm_ep.world_settings
execute if predicate svm_ep:thunder run scoreboard players operation @s svm_ep.p.copy_ability_23_delay /= %thunder_passive_cooldown_divisor svm_ep.world_settings

scoreboard players operation @s[type=player] svm_ep.p.copy_ability_23_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.copy_ability_23_delay += %WORLD svm_ep.tick






execute at @s run scoreboard players set @a[distance=..30] svm_ep.clear_slowness 5
execute at @s run effect give @a[distance=..30] minecraft:slowness 1 6 true
execute at @s run scoreboard players set @a[distance=..30] svm_ep.clear_speed 8
execute at @s run effect give @a[distance=..30] minecraft:speed 1 5 true

tag @s add executor
execute anchored eyes positioned ^ ^ ^1 run function svm_ep:power/lightning/lightning/raycast
tag @s remove executor
tag @s remove end_raycast