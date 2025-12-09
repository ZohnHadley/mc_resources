scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.copy_ability_11_delay
function svm_ep:system/cooldown/calculate

execute unless entity @s[scores={svm_ep.mana=80..}] run return run function svm_ep:system/message/not_enough_mana
execute unless entity @s[scores={svm_ep.p.copy_ability_11_count=1..}] run return run function svm_ep:system/message/copy_no_uses
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move




scoreboard players add @s svm_ep.used_move 88
scoreboard players remove @s svm_ep.mana 80
scoreboard players remove @s svm_ep.p.copy_ability_11_count 1

execute at @s as @a[distance=..100] at @s run particle minecraft:elder_guardian
execute at @s as @a[distance=..100] at @s run playsound minecraft:entity.elder_guardian.curse master @s
execute at @s run effect give @a[distance=..100] minecraft:mining_fatigue 120 2 true
effect clear @s minecraft:mining_fatigue

scoreboard players set @s svm_ep.p.copy_ability_11_delay 3000
scoreboard players operation @s[type=player] svm_ep.p.copy_ability_11_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.copy_ability_11_delay += %WORLD svm_ep.tick

effect give @s minecraft:slowness 1 3 true


#execute at @s run particle minecraft:heart ~ ~1 ~ 0.5 0.7 0.5 0.15 5
#execute at @s run particle minecraft:poof ~ ~1 ~ 0 0 0 0.15 42
#execute at @s run playsound minecraft:block.netherrack.hit master @a[distance=..25] ~ ~1 ~ 1 0







