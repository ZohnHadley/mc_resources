scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.copy_ability_24_delay
function svm_ep:system/cooldown/calculate

execute unless entity @s[scores={svm_ep.mana=5..}] run return run function svm_ep:system/message/not_enough_mana
execute unless entity @s[scores={svm_ep.p.copy_ability_24_count=1..}] run return run function svm_ep:system/message/copy_no_uses
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move



scoreboard players add @s svm_ep.used_move 5
scoreboard players set @s svm_ep.p.flora_ability_09_delay 0


scoreboard players set @s svm_ep.p.copy_ability_24_delay 5
scoreboard players operation @s[type=player] svm_ep.p.copy_ability_24_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.copy_ability_24_delay += %WORLD svm_ep.tick





tag @s add executor
execute anchored eyes positioned ^ ^ ^0.5 run function svm_ep:power/copy/power/flora/raycast
tag @s remove executor
tag @s remove end_raycast