scoreboard players remove @s[scores={svm_ep.p.void_ability_01_delay=1..}] svm_ep.p.void_ability_01_delay 1
scoreboard players remove @s[scores={svm_ep.p.void_ability_02_delay=1..}] svm_ep.p.void_ability_02_delay 1
scoreboard players remove @s[scores={svm_ep.p.void_ability_03_delay=1..}] svm_ep.p.void_ability_03_delay 1
scoreboard players remove @s[scores={svm_ep.p.void_ability_04_delay=1..}] svm_ep.p.void_ability_04_delay 1
scoreboard players remove @s[scores={svm_ep.p.void_ability_05_delay=1..}] svm_ep.p.void_ability_05_delay 1
scoreboard players remove @s[scores={svm_ep.p.void_ability_06_delay=1..}] svm_ep.p.void_ability_06_delay 1
scoreboard players remove @s[scores={svm_ep.p.void_ability_07_delay=1..}] svm_ep.p.void_ability_07_delay 1
scoreboard players remove @s[scores={svm_ep.p.void_ability_08_delay=1..}] svm_ep.p.void_ability_08_delay 1
scoreboard players remove @s[scores={svm_ep.p.void_ability_09_delay=1..}] svm_ep.p.void_ability_09_delay 1
scoreboard players remove @s[scores={svm_ep.p.void_ability_10_delay=1..}] svm_ep.p.void_ability_10_delay 1




execute unless entity @s[scores={svm_ep.using_move=1..}] as @s[scores={svm_ep.p.void_step_charge=1..}] at @s anchored eyes positioned ^ ^ ^0.5 positioned ~ ~-1.62 ~ run function svm_ep:power/void/step/tick

execute as @s[scores={svm_ep.using_move=1..100}] run function svm_ep:power/void/charging/tick
execute as @s[scores={svm_ep.using_move=101..200}] run function svm_ep:power/void/step/start_tick
execute as @s[scores={svm_ep.using_move=201..300}] run function svm_ep:power/void/black_hole/tick
execute at @s if dimension svm_ep:void run scoreboard players add @s svm_ep.mana_charge 15


#scoreboard players reset @s[scores={svm_ep.using_move=20}] svm_ep.using_move