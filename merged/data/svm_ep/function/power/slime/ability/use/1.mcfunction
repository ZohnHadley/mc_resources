#execute as @s[type=player,advancements={svm_ep:unlocked_ability/slime/1=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=5..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.slime_ability_01_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

execute at @s run function svm_ep:entity/projectile/3/shoot
scoreboard players remove @s svm_ep.mana 10
scoreboard players add @s svm_ep.used_move 8
scoreboard players set @s svm_ep.p.slime_ability_01_delay 5