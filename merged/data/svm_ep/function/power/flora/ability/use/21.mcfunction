execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move
execute as @s[type=player,advancements={svm_ep:flora_visited_biome/mushroom=false}] run return 0


scoreboard players operation @s svm_ep.mana_after_cost = @s svm_ep.mana
#MANA COST NOW EASILY MODIFABLE WITHOUT ANY UNNECESSARY BS
scoreboard players remove @s svm_ep.mana_after_cost 60


execute as @s[scores={svm_ep.mana_after_cost=..-1}] run return run function svm_ep:system/message/not_enough_mana

scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.flora_ability_21_delay
function svm_ep:system/cooldown/calculate
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown


scoreboard players set @s svm_ep.p.flora_ability_21_delay 450
scoreboard players operation @s[type=player] svm_ep.p.flora_ability_21_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.flora_ability_21_delay += %WORLD svm_ep.tick


scoreboard players operation @s svm_ep.mana = @s svm_ep.mana_after_cost



scoreboard players add @s svm_ep.used_move 95
tag @s add executor
execute anchored eyes positioned ^ ^ ^1 summon item_display run function svm_ep:power/flora/spore_cloud/setup
tag @s remove executor
playsound minecraft:block.wet_grass.place master @a ~ ~ ~ 1 2

