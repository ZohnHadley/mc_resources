scoreboard players remove @s[scores={svm_ep.p.slime_ability_01_delay=1..}] svm_ep.p.slime_ability_01_delay 1
scoreboard players remove @s[scores={svm_ep.p.slime_ability_02_delay=1..}] svm_ep.p.slime_ability_02_delay 1
scoreboard players remove @s[scores={svm_ep.p.slime_ability_03_delay=1..}] svm_ep.p.slime_ability_03_delay 1
scoreboard players remove @s[scores={svm_ep.p.slime_ability_04_delay=1..}] svm_ep.p.slime_ability_04_delay 1
scoreboard players remove @s[scores={svm_ep.p.slime_ability_05_delay=1..}] svm_ep.p.slime_ability_05_delay 1
scoreboard players remove @s[scores={svm_ep.p.slime_ability_06_delay=1..}] svm_ep.p.slime_ability_06_delay 1
scoreboard players remove @s[scores={svm_ep.p.slime_ability_07_delay=1..}] svm_ep.p.slime_ability_07_delay 1
scoreboard players remove @s[scores={svm_ep.p.slime_ability_08_delay=1..}] svm_ep.p.slime_ability_08_delay 1
scoreboard players remove @s[scores={svm_ep.p.slime_ability_09_delay=1..}] svm_ep.p.slime_ability_09_delay 1
scoreboard players remove @s[scores={svm_ep.p.slime_ability_10_delay=1..}] svm_ep.p.slime_ability_10_delay 1




execute as @s[scores={svm_ep.p.slime_movement=1}] run function svm_ep:power/slime/movement/tick

execute as @s[scores={svm_ep.using_move=1..100}] run function svm_ep:power/slime/rain/tick
execute as @s[scores={svm_ep.using_move=101..200}] run function svm_ep:power/slime/barrier/tick
execute as @s[scores={svm_ep.using_move=201..300}] run function svm_ep:power/slime/extend/tick
execute at @s if block ~ ~-0.2 ~ minecraft:slime_block run effect give @s minecraft:regeneration 1 3 true
execute at @s if block ~ ~-0.2 ~ minecraft:slime_block run scoreboard players add @s svm_ep.mana_charge 4

scoreboard players reset @s[scores={svm_ep.using_move=290}] svm_ep.using_move
scoreboard players reset @s[scores={svm_ep.using_move=180}] svm_ep.using_move
scoreboard players reset @s[scores={svm_ep.using_move=68}] svm_ep.using_move