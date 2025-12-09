scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.copy_ability_09_delay
function svm_ep:system/cooldown/calculate

#execute as @s[type=player,advancements={svm_ep:unlocked_ability/copy/2=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=250..}] run return run function svm_ep:system/message/not_enough_mana
execute unless entity @s[scores={svm_ep.p.copy_ability_09_count=1..}] run return run function svm_ep:system/message/copy_no_uses
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

execute at @s anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ minecraft:creaking_heart run tag @s add placed 

execute at @s anchored eyes positioned ^ ^ ^1 align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:dust{color:[0.98f,0.5f,0.2f],scale:1.25} ~ ~ ~ 0.325 0.325 0.325 0 20 force @s
execute as @s[tag=!placed] run return run function svm_ep:system/message/macro {"message":"No creaking heart found"}


tag @s remove placed
execute at @s anchored eyes positioned ^ ^ ^1 run function svm_ep:block/flora_creaking_heart/spawn

scoreboard players remove @s svm_ep.mana 250
scoreboard players add @s svm_ep.used_move 60

scoreboard players add @s svm_ep.used_move 88
scoreboard players remove @s svm_ep.mana 250
scoreboard players remove @s svm_ep.p.copy_ability_09_count 1


scoreboard players set @s svm_ep.p.copy_ability_09_delay 40
scoreboard players operation @s[type=player] svm_ep.p.copy_ability_09_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.copy_ability_09_delay += %WORLD svm_ep.tick




#execute at @s run particle minecraft:heart ~ ~1 ~ 0.5 0.7 0.5 0.15 5
execute at @s run playsound minecraft:entity.evoker.cast_spell ambient @a[distance=..20] ~ ~ ~ .4 2
execute at @s run playsound minecraft:entity.spider.ambient master @a ~ ~ ~ 1 1.05
#execute at @s run particle minecraft:poof ~ ~1 ~ 0 0 0 0.15 42
#execute at @s run playsound minecraft:block.netherrack.hit master @a[distance=..25] ~ ~1 ~ 1 0







