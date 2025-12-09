scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.copy_ability_19_delay
function svm_ep:system/cooldown/calculate

execute unless entity @s[scores={svm_ep.mana=70..}] run return run function svm_ep:system/message/not_enough_mana
execute unless entity @s[scores={svm_ep.p.copy_ability_19_count=1..}] run return run function svm_ep:system/message/copy_no_uses
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move




scoreboard players add @s svm_ep.used_move 208
scoreboard players set @s svm_ep.using_move 1100
scoreboard players remove @s svm_ep.mana 70
scoreboard players remove @s svm_ep.p.copy_ability_19_count 1


scoreboard players set @s svm_ep.p.copy_ability_19_delay 280
scoreboard players operation @s[type=player] svm_ep.p.copy_ability_19_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.copy_ability_19_delay += %WORLD svm_ep.tick
playsound minecraft:entity.warden.sonic_charge master @a[distance=..40] ~ ~1 ~ 1 1.05 0.2
effect give @s minecraft:slowness 2 4 true


#execute at @s run particle minecraft:heart ~ ~1 ~ 0.5 0.7 0.5 0.15 5
#execute at @s run particle minecraft:poof ~ ~1 ~ 0 0 0 0.15 42
#execute at @s run playsound minecraft:block.netherrack.hit master @a[distance=..25] ~ ~1 ~ 1 0







