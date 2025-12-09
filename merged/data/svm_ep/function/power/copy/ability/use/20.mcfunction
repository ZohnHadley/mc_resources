
scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.copy_ability_20_delay
function svm_ep:system/cooldown/calculate

execute unless entity @s[scores={svm_ep.p.copy_ability_20_count=1..}] run return run function svm_ep:system/message/copy_no_uses
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move




scoreboard players set @s svm_ep.p.copy_ability_20_delay 5
scoreboard players operation @s[type=player] svm_ep.p.copy_ability_20_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.copy_ability_20_delay += %WORLD svm_ep.tick

scoreboard players add @s svm_ep.p.copy_withering_touch 1
scoreboard players operation @s svm_ep.p.copy_withering_touch %= %2 svm_ep.numbers


execute at @s[scores={svm_ep.p.copy_withering_touch=0}] run playsound minecraft:entity.wither_skeleton.hurt master @a[distance=..25] ~ ~ ~ 0.5 0 0.2
execute at @s[scores={svm_ep.p.copy_withering_touch=1}] run playsound minecraft:entity.wither_skeleton.ambient master @a[distance=..25] ~ ~ ~ 1.5 0.8 0.2