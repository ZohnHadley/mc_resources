scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.copy_ability_04_delay
function svm_ep:system/cooldown/calculate

execute unless entity @s[scores={svm_ep.p.copy_ability_04_count=1..}] run return run function svm_ep:system/message/copy_no_uses
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move




scoreboard players set @s svm_ep.p.copy_ability_04_delay 5
scoreboard players operation @s[type=player] svm_ep.p.copy_ability_04_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.copy_ability_04_delay += %WORLD svm_ep.tick

scoreboard players add @s svm_ep.p.copy_night_vision 1
scoreboard players set @s[scores={svm_ep.p.copy_night_vision=2..}] svm_ep.p.copy_night_vision 0


execute at @s[scores={svm_ep.p.copy_night_vision=0}] run playsound minecraft:entity.phantom.ambient master @s ~ ~ ~ 1.75 0.7
execute at @s[scores={svm_ep.p.copy_night_vision=1}] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.7
effect clear @s[scores={svm_ep.p.copy_night_vision=0}] minecraft:night_vision