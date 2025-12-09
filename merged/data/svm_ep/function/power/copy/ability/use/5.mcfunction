scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.copy_ability_05_delay
function svm_ep:system/cooldown/calculate

execute unless entity @s[scores={svm_ep.mana=30..}] run return run function svm_ep:system/message/not_enough_mana
execute unless entity @s[scores={svm_ep.p.copy_ability_05_count=1..}] run return run function svm_ep:system/message/copy_no_uses
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move



scoreboard players add @s svm_ep.used_move 80
scoreboard players add @s svm_ep.using_move 300
scoreboard players remove @s svm_ep.mana 30

scoreboard players set @s svm_ep.p.copy_ability_05_delay 80
scoreboard players operation @s[type=player] svm_ep.p.copy_ability_05_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.copy_ability_05_delay += %WORLD svm_ep.tick

execute at @s run playsound minecraft:entity.blaze.ambient master @a[distance=..25] ~ ~ ~ 0.9 1.22 0.2

#execute at @s run particle minecraft:heart ~ ~1 ~ 0.5 0.7 0.5 0.15 5
 
#execute at @s run particle minecraft:poof ~ ~1 ~ 0 0 0 0.15 42
#execute at @s run playsound minecraft:block.netherrack.hit master @a[distance=..25] ~ ~1 ~ 1 0







