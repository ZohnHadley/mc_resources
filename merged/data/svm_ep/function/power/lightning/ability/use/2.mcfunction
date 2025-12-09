scoreboard players set @s svm_ep.p.lightning_ability_02_delay 40
scoreboard players set @s[scores={svm_ep.p.lightning_foreshadowing_stage=1..}] svm_ep.p.lightning_ability_02_delay 35
scoreboard players set @s[scores={svm_ep.p.lightning_foreshadowing_stage=2..}] svm_ep.p.lightning_ability_02_delay 30
scoreboard players set @s[scores={svm_ep.p.lightning_foreshadowing_stage=3..}] svm_ep.p.lightning_ability_02_delay 25
scoreboard players set @s[scores={svm_ep.p.lightning_foreshadowing_stage=4..}] svm_ep.p.lightning_ability_02_delay 20

scoreboard players set @s[tag=svm_ep.npc] svm_ep.p.lightning_ability_02_delay 120


scoreboard players remove @s svm_ep.mana 10
scoreboard players add @s svm_ep.used_move 50
scoreboard players set @s svm_ep.using_move 100
scoreboard players remove @s[scores={svm_ep.p.lightning_foreshadowing_stage=1..}] svm_ep.using_move 2
scoreboard players remove @s[scores={svm_ep.p.lightning_foreshadowing_stage=2..}] svm_ep.using_move 1
scoreboard players remove @s[scores={svm_ep.p.lightning_foreshadowing_stage=3..}] svm_ep.using_move 1
scoreboard players remove @s[scores={svm_ep.p.lightning_foreshadowing_stage=4..}] svm_ep.using_move 1
scoreboard players remove @s[scores={svm_ep.p.lightning_foreshadowing_stage=5..}] svm_ep.using_move 1
execute at @s run scoreboard players set @s svm_ep.clear_slowness 9
execute at @s run effect give @s minecraft:slowness 1 6 true

item modify entity @s weapon.mainhand svm_ep:update_mainhand
particle minecraft:dust_color_transition{from_color:[1f,1f,0f],to_color:[1.6f,0.0f,0.5f],scale:1f} ~ ~0.7 ~ 1 1 1 0.4 40
execute at @s run playsound minecraft:entity.allay.death ambient @a[distance=..20] ~ ~ ~ 1.4 2