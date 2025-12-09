execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move
execute as @s[type=player,advancements={svm_ep:flora_visited_biome/pale=false}] run return 0


scoreboard players operation @s svm_ep.mana_after_cost = @s svm_ep.mana
#MANA COST NOW EASILY MODIFABLE WITHOUT ANY UNNECESSARY BS
scoreboard players remove @s svm_ep.mana_after_cost 250


execute as @s[scores={svm_ep.mana_after_cost=..-1}] run return run function svm_ep:system/message/not_enough_mana

scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.flora_ability_32_delay
function svm_ep:system/cooldown/calculate
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown


scoreboard players set @s svm_ep.p.flora_ability_32_delay 40
scoreboard players operation @s[type=player] svm_ep.p.flora_ability_32_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.flora_ability_32_delay += %WORLD svm_ep.tick




execute at @s anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ minecraft:creaking_heart run tag @s add placed 

execute at @s anchored eyes positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:dust{color:[0.98f,0.5f,0.2f],scale:1.25} ~ ~ ~ 0.325 0.325 0.325 0 20 force @s
execute as @s[tag=!placed] run return run function svm_ep:system/message/macro {"message":"No creaking heart found"}


tag @s remove placed
execute at @s anchored eyes positioned ^ ^ ^1 run function svm_ep:block/flora_creaking_heart/spawn

scoreboard players operation @s svm_ep.mana = @s svm_ep.mana_after_cost
scoreboard players add @s svm_ep.used_move 60
