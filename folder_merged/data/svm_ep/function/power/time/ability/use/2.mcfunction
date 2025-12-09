execute as @s[type=player,advancements={svm_ep:unlocked_ability/time/2=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=45..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.time_ability_02_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

scoreboard players remove @s svm_ep.mana 45
scoreboard players set @s svm_ep.using_move 200
scoreboard players add @s svm_ep.used_move 225
scoreboard players set @s svm_ep.effect 1
execute unless entity @s[scores={svm_ep.e.accelerated=200..}] run scoreboard players set @s svm_ep.e.accelerated 200
execute unless entity @s[scores={svm_ep.p.time_accelerated_level=1..}] run scoreboard players set @s svm_ep.using_move 195
execute unless entity @s[scores={svm_ep.p.time_accelerated_level=1..}] run scoreboard players set @s svm_ep.p.time_accelerated_level 1
#scoreboard players set @s svm_ep.p.time_ability_02_delay 100


execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 0.3 2