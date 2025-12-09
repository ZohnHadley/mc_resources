scoreboard players add @s svm_ep.used_move 4
scoreboard players add @s svm_ep.mana_drain 75

scoreboard players add @s svm_ep.p.fire_ability_07_delay 2
scoreboard players set @s[scores={svm_ep.p.fire_ability_07_delay=10..}] svm_ep.p.fire_ability_07_delay 10
effect give @s minecraft:slowness 1 1 true
effect give @s minecraft:weakness 1 5 true
effect give @s minecraft:mining_fatigue 1 3 true

execute at @s run playsound minecraft:block.fire.ambient master @a ~ ~ ~ 0.25 0

execute at @s[scores={svm_ep.using_move=..778}] run particle minecraft:dust{color:[18000000f,18000000f,0f],scale:2.5f} ~ ~0.1 ~ 0.2 0.2 0.2 0 1
execute at @s[scores={svm_ep.using_move=..782}] run particle minecraft:dust{color:[18000000f,1f,0f],scale:2.25f} ~ ~0.1 ~ 0.2 0.2 0.2 0 1
execute at @s[scores={svm_ep.using_move=..786}] run particle minecraft:dust{color:[18000000f,0.75f,0f],scale:2f} ~ ~0.05 ~ 0.3 0.1 0.3 0 2
execute at @s[scores={svm_ep.using_move=..790}] run particle minecraft:dust{color:[18000000f,0.5f,0f],scale:1.75f} ~ ~0.025 ~ 0.5 0.1 0.5 0 2
execute at @s[scores={svm_ep.using_move=..794}] run particle minecraft:dust{color:[18000000f,0.25f,0f],scale:1.5f} ~ ~0.025 ~ 0.8 0.1 0.8 0 4
execute at @s[scores={svm_ep.using_move=..798}] run particle minecraft:dust{color:[1f,0.25f,0f],scale:1.25f} ~ ~0.025 ~ 0.8 0.1 0.8 0 8


execute unless predicate svm_ep:holding_ability as @s[tag=!svm_ep.fire_had_jumped] run function svm_ep:power/fire/leap/jump
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move
execute as @s[scores={input.sprint_time=1}] run return run function svm_ep:power/fire/leap/dash
execute as @s[scores={input.jump_time=1}] run function svm_ep:power/fire/leap/jump
execute as @s[scores={svm_ep.using_move=..701}] at @s run function svm_ep:power/fire/leap/jump
execute as @s[scores={svm_ep.mana=..1,svm_ep.using_move=..800}] at @s run function svm_ep:power/fire/leap/jump
scoreboard players reset @s[scores={svm_ep.mana=..1}] svm_ep.using_move
execute unless entity @s[scores={svm_ep.using_move=1..}] run tag @s remove svm_ep.fire_had_jumped