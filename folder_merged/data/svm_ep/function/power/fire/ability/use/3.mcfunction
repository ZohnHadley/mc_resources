execute as @s[type=player,advancements={svm_ep:unlocked_ability/fire/3=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=25..}] run return run function svm_ep:system/message/not_enough_mana
execute as @s[scores={svm_ep.p.fire_ability_03_delay=1..}] run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move

scoreboard players remove @s svm_ep.mana 25
scoreboard players add @s svm_ep.used_move 25
scoreboard players set @s svm_ep.using_move 150
scoreboard players add @s svm_ep.p.fire_barrage_bullets 5
scoreboard players set @s svm_ep.p.fire_barrage_charge_max 15
scoreboard players set @s svm_ep.p.fire_barrage_charge 0

scoreboard players set @s svm_ep.p.fire_ability_03_delay 120
playsound minecraft:block.note_block.snare master @s ~ ~ ~ 0.5 1.5
title @s title ["",{"text":"|","bold":true,"color":"gray"},{"score":{"name":"@s","objective":"svm_ep.p.fire_barrage_bullets"},"color":"#F86900"},{"text":"|","bold":true,"color":"gray"}]
