scoreboard players add @s svm_ep.p.copy_ability_07_delay 1


execute unless entity @s[scores={svm_ep.mana=1..}] run scoreboard players reset @s svm_ep.using_move
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move

execute unless entity @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:power/copy/wind_charge/shoot


execute as @s[scores={svm_ep.using_move=390..}] run return 0
scoreboard players reset @s svm_ep.using_move

scoreboard players set $strength player_motion.api.launch 15000
execute at @s anchored eyes facing ^ ^0.5 ^1 run function player_motion:api/launch_looking
particle minecraft:gust ~ ~1 ~ 0.7 0.4 0.7 0 5
playsound minecraft:entity.breeze.jump master @a[distance=..35] ~ ~1 ~ 1.2 0.95 0.2