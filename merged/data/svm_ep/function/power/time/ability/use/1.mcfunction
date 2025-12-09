#execute as @s[type=player,advancements={svm_ep:unlocked_ability/time/1=false}] run return 0
execute as @s[scores={svm_ep.time_stopping=1..}] at @s run scoreboard players set @e[distance=..50,scores={svm_ep.time_stopped=1..}] svm_ep.time_stopped 1
execute as @s[scores={svm_ep.time_stopping=1..}] run return run scoreboard players set @s svm_ep.time_stopping 1


execute unless entity @s[scores={svm_ep.mana=25..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.time_ability_01_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

scoreboard players remove @s svm_ep.mana 25
scoreboard players set @s svm_ep.using_move 50
scoreboard players add @s svm_ep.used_move 80
scoreboard players set @s svm_ep.p.time_ability_01_delay 10
scoreboard players add @s svm_ep.p.time_stop_charge 17
