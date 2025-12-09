
scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.gravity_ability_07_delay
function svm_ep:system/cooldown/calculate

execute as @s[type=player,advancements={svm_ep:unlocked_ability/gravity/7=false}] run return 0
#execute unless entity @s[scores={svm_ep.mana=60..}] run return run function svm_ep:system/message/not_enough_mana
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move



scoreboard players set @s svm_ep.p.gravity_ability_07_delay 3
scoreboard players operation @s[type=player] svm_ep.p.gravity_ability_07_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.gravity_ability_07_delay += %WORLD svm_ep.tick










scoreboard players add @s svm_ep.p.gravity_repel_zone 1
scoreboard players set @s[scores={svm_ep.p.gravity_repel_zone=2..}] svm_ep.p.gravity_repel_zone 0


execute at @s[scores={svm_ep.p.gravity_repel_zone=0}] run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 0.7
execute at @s[scores={svm_ep.p.gravity_repel_zone=1}] run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 1.7
effect clear @s[scores={svm_ep.p.gravity_repel_zone=0}] minecraft:slow_falling