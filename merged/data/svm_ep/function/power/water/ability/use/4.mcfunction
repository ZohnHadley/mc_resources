

scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.water_ability_04_delay
function svm_ep:system/cooldown/calculate

execute as @s[type=player,advancements={svm_ep:unlocked_ability/water/4=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=5..}] run return run function svm_ep:system/message/not_enough_mana
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move



scoreboard players set @s svm_ep.p.water_ability_04_delay 20
scoreboard players operation @s[type=player] svm_ep.p.water_ability_04_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.water_ability_04_delay += %WORLD svm_ep.tick

scoreboard players remove @s svm_ep.mana 5
scoreboard players add @s svm_ep.used_move 10


scoreboard players reset @s svm_ep.p.water_manipulation_tick
scoreboard players set @s svm_ep.p.water_manipulation_state 0
execute at @s anchored eyes positioned ^ ^ ^ if block ~ ~ ~ water run scoreboard players set @s svm_ep.p.water_manipulation_state 2
execute at @s anchored eyes positioned ^ ^ ^-0.5 if block ~ ~ ~ water run scoreboard players set @s svm_ep.p.water_manipulation_state 2
execute at @s anchored eyes positioned ^ ^ ^-1 if block ~ ~ ~ water run scoreboard players set @s svm_ep.p.water_manipulation_state 2


scoreboard players set @s svm_ep.using_move 300


#>>
