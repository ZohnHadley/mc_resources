
scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.non_power.ability_9993_delay
function svm_ep:system/cooldown/calculate


execute as @s[type=player,advancements={svm_ep:unlocked_ability/non_power/forest_wolves=false}] run return 0
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown
execute unless entity @s[scores={svm_ep.mana=50..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

scoreboard players remove @s svm_ep.mana 50
scoreboard players add @s svm_ep.used_move 35
scoreboard players set @s svm_ep.using_move 101200

scoreboard players set @s[scores={svm_ep.used_move=..100}] svm_ep.used_move 100



scoreboard players set @s svm_ep.non_power.ability_9993_delay 400
scoreboard players operation @s[type=player] svm_ep.non_power.ability_9993_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.non_power.ability_9993_delay += %WORLD svm_ep.tick