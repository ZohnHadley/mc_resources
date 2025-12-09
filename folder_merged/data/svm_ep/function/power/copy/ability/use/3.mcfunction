scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.copy_ability_03_delay
function svm_ep:system/cooldown/calculate

execute unless entity @s[scores={svm_ep.p.copy_ability_03_count=1..}] run return run function svm_ep:system/message/copy_no_uses
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move




scoreboard players set @s svm_ep.p.copy_ability_03_delay 5
scoreboard players operation @s[type=player] svm_ep.p.copy_ability_03_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.copy_ability_03_delay += %WORLD svm_ep.tick

scoreboard players add @s svm_ep.p.copy_underwater_adaptation 1
scoreboard players set @s[scores={svm_ep.p.copy_underwater_adaptation=2..}] svm_ep.p.copy_underwater_adaptation 0


execute at @s[scores={svm_ep.p.copy_underwater_adaptation=0}] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.7
execute at @s[scores={svm_ep.p.copy_underwater_adaptation=1}] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.7
