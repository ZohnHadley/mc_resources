scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.copy_ability_27_delay
function svm_ep:system/cooldown/calculate

execute unless entity @s[scores={svm_ep.mana=20..}] run return run function svm_ep:system/message/not_enough_mana
execute unless entity @s[scores={svm_ep.p.copy_ability_27_count=1..}] run return run function svm_ep:system/message/copy_no_uses
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move



scoreboard players add @s svm_ep.used_move 60
scoreboard players remove @s svm_ep.mana 20
scoreboard players set @s svm_ep.using_move 1450
scoreboard players remove @s svm_ep.p.copy_ability_27_count 1


scoreboard players set @s svm_ep.p.copy_ability_27_delay 7
scoreboard players operation @s[type=player] svm_ep.p.copy_ability_27_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.copy_ability_27_delay += %WORLD svm_ep.tick





