scoreboard players remove @s[scores={svm_ep.p.harpie_ability_01_delay=1..}] svm_ep.p.harpie_ability_01_delay 1
scoreboard players remove @s[scores={svm_ep.p.harpie_ability_02_delay=1..}] svm_ep.p.harpie_ability_02_delay 1
scoreboard players remove @s[scores={svm_ep.p.harpie_ability_03_delay=1..}] svm_ep.p.harpie_ability_03_delay 1
scoreboard players remove @s[scores={svm_ep.p.harpie_ability_04_delay=1..}] svm_ep.p.harpie_ability_04_delay 1
scoreboard players remove @s[scores={svm_ep.p.harpie_ability_05_delay=1..}] svm_ep.p.harpie_ability_05_delay 1
scoreboard players remove @s[scores={svm_ep.p.harpie_ability_06_delay=1..}] svm_ep.p.harpie_ability_06_delay 1
scoreboard players remove @s[scores={svm_ep.p.harpie_ability_07_delay=1..}] svm_ep.p.harpie_ability_07_delay 1
scoreboard players remove @s[scores={svm_ep.p.harpie_ability_08_delay=1..}] svm_ep.p.harpie_ability_08_delay 1
scoreboard players remove @s[scores={svm_ep.p.harpie_ability_09_delay=1..}] svm_ep.p.harpie_ability_09_delay 1
scoreboard players remove @s[scores={svm_ep.p.harpie_ability_10_delay=1..}] svm_ep.p.harpie_ability_10_delay 1




execute as @s[scores={svm_ep.p.harpie_movement=1}] run function svm_ep:power/harpie/movement/tick

execute as @s[scores={svm_ep.using_move=1..100}] run function svm_ep:power/harpie/razor/tick
execute as @s[scores={svm_ep.using_move=101..200}] run function svm_ep:power/harpie/manipulation/tick

scoreboard players reset @s[scores={svm_ep.using_move=20}] svm_ep.using_move