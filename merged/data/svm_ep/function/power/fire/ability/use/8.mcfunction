execute as @s[type=player,advancements={svm_ep:unlocked_ability/fire/8=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=100..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.fire_ability_08_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

execute at @s run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 1.2 1.5
playsound minecraft:entity.blaze.shoot master @a[distance=..50] ~ ~ ~ 1 0 1
scoreboard players remove @s svm_ep.mana 100
scoreboard players add @s svm_ep.used_move 1200
scoreboard players set @s svm_ep.using_move 900
scoreboard players set @s svm_ep.p.fire_ability_08_delay 2400