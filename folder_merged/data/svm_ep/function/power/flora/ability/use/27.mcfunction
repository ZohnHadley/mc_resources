execute as @s[scores={svm_ep.p.flora_grass_step=1..}] run return 0
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move
execute as @s[type=player,advancements={svm_ep:flora_visited_biome/savanna=false}] run return 0


scoreboard players operation @s svm_ep.mana_after_cost = @s svm_ep.mana
#MANA COST NOW EASILY MODIFABLE WITHOUT ANY UNNECESSARY BS


scoreboard players remove @s svm_ep.mana_after_cost 50
execute as @s[scores={svm_ep.mana_after_cost=..-1}] run return run function svm_ep:system/message/not_enough_mana


scoreboard players operation @s svm_ep.mana = @s svm_ep.mana_after_cost



scoreboard players add @s svm_ep.used_move 150


scoreboard players add @s svm_ep.p.flora_grass_step 1500
playsound minecraft:block.sweet_berry_bush.break master @a[distance=..30] ~ ~ ~ 1 2
