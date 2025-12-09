execute as @s[type=player,advancements={svm_ep:unlocked_ability/slime/5=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=25..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.slime_ability_06_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

scoreboard players remove @s svm_ep.mana 25
scoreboard players set @s svm_ep.using_move 150
scoreboard players add @s svm_ep.used_move 100
scoreboard players set @s svm_ep.p.slime_ability_06_delay 40
execute at @s run playsound minecraft:block.slime_block.break master @a[distance=..20] ~ ~ ~ 2 0
execute at @s run playsound minecraft:entity.player.attack.crit master @a[distance=..20] ~ ~ ~ 1 1.5