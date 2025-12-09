

execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move
execute as @s[type=player,advancements={svm_ep:flora_visited_biome/forest=false}] run return 0


scoreboard players operation @s svm_ep.mana_after_cost = @s svm_ep.mana
#MANA COST NOW EASILY MODIFABLE WITHOUT ANY UNNECESSARY BS
scoreboard players remove @s svm_ep.mana_after_cost 40


execute as @s[scores={svm_ep.mana_after_cost=..-1}] run return run function svm_ep:system/message/not_enough_mana

scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.flora_ability_17_delay
function svm_ep:system/cooldown/calculate
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown


scoreboard players set @s svm_ep.p.flora_ability_17_delay 10
scoreboard players operation @s[type=player] svm_ep.p.flora_ability_17_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.flora_ability_17_delay += %WORLD svm_ep.tick









tag @s add executor
execute anchored eyes positioned ^ ^ ^1 run function svm_ep:power/flora/root_entangle/raycast
tag @s remove executor
tellraw @s[scores={svm_ep.numbers=1}] ["",{"text":"Requires Wood Block at cursor","color":"red"},{"text":"!","color":"dark_gray"}]
tellraw @s[scores={svm_ep.numbers=2}] [{"text":"Can't use here, the ability has been used here recently","color":"red"},{"text":"!","color":"dark_gray"}]

scoreboard players add @s[scores={svm_ep.numbers=3}] svm_ep.p.flora_ability_17_delay 130
scoreboard players operation @s svm_ep.mana = @s svm_ep.mana_after_cost
effect give @s[scores={svm_ep.numbers=3}] minecraft:slowness 1 3 true
scoreboard players reset @s svm_ep.numbers