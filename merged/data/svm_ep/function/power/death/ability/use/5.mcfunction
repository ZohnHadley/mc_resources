scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.death_ability_05_delay
function svm_ep:system/cooldown/calculate

execute as @s[type=player,advancements={svm_ep:unlocked_ability/death/5=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=250..}] run return run function svm_ep:system/message/not_enough_mana
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move



scoreboard players set @s svm_ep.using_move 400
scoreboard players add @s svm_ep.used_move 800
scoreboard players remove @s svm_ep.mana 250

execute at @s run playsound minecraft:block.respawn_anchor.set_spawn master @a[distance=..25] ~ ~ ~ 0.7 0
effect give @s minecraft:slowness 2 5 true

scoreboard players set @s svm_ep.p.death_ability_05_delay 24000
scoreboard players operation @s[type=player] svm_ep.p.death_ability_05_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.death_ability_05_delay += %WORLD svm_ep.tick










