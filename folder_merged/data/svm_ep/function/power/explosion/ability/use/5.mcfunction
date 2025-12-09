execute as @s[type=player,advancements={svm_ep:unlocked_ability/explosion/3=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=5..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.explosion_ability_05_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

scoreboard players remove @s svm_ep.mana 5
scoreboard players set @s svm_ep.using_move 250
scoreboard players set @s svm_ep.p.explosion_launch_charge 3
scoreboard players set @s svm_ep.p.explosion_ability_05_delay 5
scoreboard players set @s[type=!player] svm_ep.p.explosion_ability_05_delay 35
