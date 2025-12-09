scoreboard players set @s svm_ep.p.lightning_ability_03_delay 240
scoreboard players remove @s svm_ep.mana 25
scoreboard players add @s svm_ep.used_move 150
scoreboard players set @s svm_ep.using_move 200

scoreboard players remove @s[scores={svm_ep.p.lightning_foreshadowing_stage=1..}] svm_ep.using_move 2
scoreboard players remove @s[scores={svm_ep.p.lightning_foreshadowing_stage=2..}] svm_ep.using_move 2
scoreboard players remove @s[scores={svm_ep.p.lightning_foreshadowing_stage=3..}] svm_ep.using_move 2
scoreboard players remove @s[scores={svm_ep.p.lightning_foreshadowing_stage=4..}] svm_ep.using_move 2
scoreboard players remove @s[scores={svm_ep.p.lightning_foreshadowing_stage=5..}] svm_ep.using_move 2


item modify entity @s weapon.offhand svm_ep:update_offhand
particle minecraft:dust_color_transition{from_color:[1f,1f,0f],to_color:[1.6f,0.0f,0.5f],scale:1f} ~ ~0.7 ~ 1 1 1 0.4 80
execute at @s run playsound minecraft:entity.allay.death ambient @a[distance=..30] ~ ~ ~ 2 1.3