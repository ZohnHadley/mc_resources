scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.death_ability_01_delay
function svm_ep:system/cooldown/calculate

#execute as @s[type=player,advancements={svm_ep:unlocked_ability/death/1=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=25..}] run return run function svm_ep:system/message/not_enough_mana
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move
execute if items entity @s weapon.mainhand * run return run function svm_ep:system/message/holding_item


scoreboard players add @s svm_ep.used_move 120
scoreboard players remove @s svm_ep.mana 25
loot give @s loot svm_ep:items/death_scythe

scoreboard players set @s svm_ep.p.death_ability_01_delay 6000
scoreboard players operation @s[type=player] svm_ep.p.death_ability_01_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.death_ability_01_delay += %WORLD svm_ep.tick










execute at @s run playsound minecraft:entity.wither.spawn master @a[distance=..25] ~ ~ ~ 1 1.7
execute at @s run particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0.85 200
execute at @s run particle minecraft:dust{color:[0,0,0],scale:.5} ~ ~1 ~ 1.25 1.25 1.25 0.85 200
execute at @s run playsound minecraft:entity.wither_skeleton.ambient master @a[distance=..25] ~ ~ ~ 2 0