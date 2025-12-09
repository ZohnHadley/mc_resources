scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.copy_ability_22_delay
function svm_ep:system/cooldown/calculate

execute unless entity @s[scores={svm_ep.mana=5..}] run return run function svm_ep:system/message/not_enough_mana
execute unless entity @s[scores={svm_ep.p.copy_ability_22_count=1..}] run return run function svm_ep:system/message/copy_no_uses
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move


function svm_ep:system/gamemode/save
scoreboard players set @s svm_ep.using_move 1113
tag @s add svm_ep.phase_first_tick


scoreboard players add @s svm_ep.used_move 108
scoreboard players remove @s svm_ep.mana 5
scoreboard players remove @s svm_ep.p.copy_ability_22_count 1


scoreboard players set @s svm_ep.p.copy_ability_22_delay 40
scoreboard players operation @s[type=player] svm_ep.p.copy_ability_22_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.copy_ability_22_delay += %WORLD svm_ep.tick




execute at @s run playsound minecraft:entity.blaze.shoot ambient @a[distance=..20] ~ ~ ~ 3 1.3
execute at @s run playsound minecraft:entity.evoker.cast_spell ambient @a[distance=..20] ~ ~ ~ 3.7 0.8
execute at @s run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.35 120

