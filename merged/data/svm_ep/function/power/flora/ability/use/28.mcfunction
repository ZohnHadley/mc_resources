execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move
execute as @s[type=player,advancements={svm_ep:flora_visited_biome/cherry=false}] run return 0


scoreboard players operation @s svm_ep.mana_after_cost = @s svm_ep.mana
#MANA COST NOW EASILY MODIFABLE WITHOUT ANY UNNECESSARY BS
scoreboard players remove @s svm_ep.mana_after_cost 80


execute as @s[scores={svm_ep.mana_after_cost=..-1}] run return run function svm_ep:system/message/not_enough_mana

scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.flora_ability_28_delay
function svm_ep:system/cooldown/calculate
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown


scoreboard players set @s svm_ep.p.flora_ability_28_delay 500
scoreboard players operation @s[type=player] svm_ep.p.flora_ability_28_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.flora_ability_28_delay += %WORLD svm_ep.tick


scoreboard players operation @s svm_ep.mana = @s svm_ep.mana_after_cost



scoreboard players set @s svm_ep.charge_length 1
scoreboard players add @s svm_ep.used_move 250
scoreboard players set @s svm_ep.using_move 1225
scoreboard players set @s svm_ep.p.flora_ability_28_delay 500
playsound minecraft:block.sweet_berry_bush.break master @a[distance=..30] ~ ~ ~ 1 2
