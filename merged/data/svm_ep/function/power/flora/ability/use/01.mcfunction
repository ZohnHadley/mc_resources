

execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move
#execute as @s[type=player,advancements={svm_ep:unlocked_ability/flora/1=false}] run return 0


scoreboard players operation @s svm_ep.mana_after_cost = @s svm_ep.mana
#MANA COST NOW EASILY MODIFABLE WITHOUT ANY UNNECESSARY BS
scoreboard players remove @s svm_ep.mana_after_cost 5


execute as @s[scores={svm_ep.mana_after_cost=..-1}] run return run function svm_ep:system/message/not_enough_mana

scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.flora_ability_01_delay
function svm_ep:system/cooldown/calculate
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown


scoreboard players set @s svm_ep.p.flora_ability_01_delay 10
scoreboard players operation @s[type=player] svm_ep.p.flora_ability_01_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.flora_ability_01_delay += %WORLD svm_ep.tick



scoreboard players set @s svm_ep.using_move 2250