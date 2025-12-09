scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.death_ability_02_delay
function svm_ep:system/cooldown/calculate

execute as @s[type=player,advancements={svm_ep:unlocked_ability/death/2=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=40..}] run return run function svm_ep:system/message/not_enough_mana
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move



scoreboard players add @s svm_ep.used_move 250
scoreboard players add @s svm_ep.using_move 100
scoreboard players remove @s svm_ep.mana 40


scoreboard players set @s svm_ep.p.death_ability_02_delay 600
execute as @s[scores={svm_ep.p.death_unsealed_reaper=1..}] run scoreboard players operation @s svm_ep.p.death_ability_02_delay *= %unsealed_reaper_cooldown_multiplier svm_ep.world_settings
execute as @s[scores={svm_ep.p.death_unsealed_reaper=1..}] run scoreboard players operation @s svm_ep.p.death_ability_02_delay /= %unsealed_reaper_cooldown_divisor svm_ep.world_settings
scoreboard players operation @s[type=player] svm_ep.p.death_ability_02_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.death_ability_02_delay += %WORLD svm_ep.tick




#execute at @s run particle minecraft:heart ~ ~1 ~ 0.5 0.7 0.5 0.15 5
execute at @s run playsound minecraft:entity.evoker.prepare_summon ambient @a[distance=..20] ~ ~ ~ .4 0
execute at @s run playsound minecraft:entity.wither_skeleton.death master @a[distance=..25] ~ ~ ~ 1 0

#execute at @s run particle minecraft:poof ~ ~1 ~ 0 0 0 0.15 42
#execute at @s run playsound minecraft:block.netherrack.hit master @a[distance=..25] ~ ~1 ~ 1 0







