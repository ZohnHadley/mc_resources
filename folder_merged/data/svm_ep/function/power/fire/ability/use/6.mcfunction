execute as @s[type=player,advancements={svm_ep:unlocked_ability/fire/6=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=25..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.fire_ability_06_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

scoreboard players set @s svm_ep.using_move 650
effect give @s minecraft:slowness 1 0 true
scoreboard players reset @s svm_ep.charge_length
execute at @s run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 0.25 0.7
scoreboard players remove @s svm_ep.mana 25
scoreboard players add @s svm_ep.used_move 120
scoreboard players set @s svm_ep.p.fire_ability_06_delay 20