

scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.healing_ability_05_delay
function svm_ep:system/cooldown/calculate

execute as @s[type=player,advancements={svm_ep:unlocked_ability/healing/5=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=15..}] run return run function svm_ep:system/message/not_enough_mana
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move



scoreboard players set @s svm_ep.p.healing_ability_05_delay 20
scoreboard players operation @s[type=player] svm_ep.p.healing_ability_05_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.healing_ability_05_delay += %WORLD svm_ep.tick

scoreboard players add @s svm_ep.used_move 400
scoreboard players set @s svm_ep.using_move 500

execute at @s run playsound minecraft:entity.breeze.inhale ambient @a[distance=..20] ~ ~ ~ 1.4 0
effect give @s minecraft:slowness 2 3 true
particle minecraft:portal ~ ~1 ~ 2 2 2 3.4 100

#>>
