execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move
execute as @s[scores={svm_ep.p.flora_inescapable_garden_castor=1..}] run return run function svm_ep:power/flora/ability/use/16_special


scoreboard players operation @s svm_ep.mana_after_cost = @s svm_ep.mana
#MANA COST NOW EASILY MODIFABLE WITHOUT ANY UNNECESSARY BS
scoreboard players remove @s svm_ep.mana_after_cost 100


execute as @s[scores={svm_ep.mana_after_cost=..-1}] run return run function svm_ep:system/message/not_enough_mana

scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.flora_ability_16_delay
function svm_ep:system/cooldown/calculate
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown


scoreboard players set @s svm_ep.p.flora_ability_16_delay 8000
scoreboard players operation @s[type=player] svm_ep.p.flora_ability_16_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.flora_ability_16_delay += %WORLD svm_ep.tick

scoreboard players operation @s svm_ep.mana = @s svm_ep.mana_after_cost


scoreboard players set @s svm_ep.using_move 2200
effect give @s minecraft:slowness 2 6 true
effect give @e[type=!#svm_ep:technical,distance=..100] minecraft:slowness 2 3 true
effect give @e[type=!#svm_ep:technical,distance=..100] minecraft:darkness 3 0 true
playsound minecraft:block.bell.use master @a[distance=..25] ~ ~ ~ 1.5 0.85
