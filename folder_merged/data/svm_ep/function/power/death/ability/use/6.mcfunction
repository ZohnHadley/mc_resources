

scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.death_ability_06_delay
function svm_ep:system/cooldown/calculate

execute as @s[type=player,advancements={svm_ep:unlocked_ability/death/6=false}] run return 0
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move


scoreboard players set @s svm_ep.using_move 300

scoreboard players set @s svm_ep.p.death_ability_06_delay 20
execute as @s[scores={svm_ep.p.death_unsealed_reaper=1..}] run scoreboard players operation @s svm_ep.p.death_ability_06_delay *= %unsealed_reaper_cooldown_multiplier svm_ep.world_settings
execute as @s[scores={svm_ep.p.death_unsealed_reaper=1..}] run scoreboard players operation @s svm_ep.p.death_ability_06_delay /= %unsealed_reaper_cooldown_divisor svm_ep.world_settings
scoreboard players operation @s[type=player] svm_ep.p.death_ability_06_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.death_ability_06_delay += %WORLD svm_ep.tick

execute at @s run playsound minecraft:item.lodestone_compass.lock master @s ~ ~1 ~ 1.5 1.5




#>>
