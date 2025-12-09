scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.copy_ability_01_delay
function svm_ep:system/cooldown/calculate

#execute as @s[type=player,advancements={svm_ep:unlocked_ability/copy/2=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=100..}] run return run function svm_ep:system/message/not_enough_mana
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move



scoreboard players add @s svm_ep.used_move 150
scoreboard players add @s svm_ep.using_move 100
scoreboard players remove @s svm_ep.mana 100


scoreboard players set @s svm_ep.p.copy_ability_01_delay 240
scoreboard players operation @s[type=player] svm_ep.p.copy_ability_01_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.copy_ability_01_delay += %WORLD svm_ep.tick




#execute at @s run particle minecraft:heart ~ ~1 ~ 0.5 0.7 0.5 0.15 5
execute at @s run playsound minecraft:entity.evoker.prepare_summon ambient @a[distance=..20] ~ ~ ~ .4 2
execute at @s run playsound minecraft:block.respawn_anchor.charge master @a[distance=..25] ~ ~ ~ 1 0 0.5
#execute at @s run particle minecraft:poof ~ ~1 ~ 0 0 0 0.15 42
#execute at @s run playsound minecraft:block.netherrack.hit master @a[distance=..25] ~ ~1 ~ 1 0







