scoreboard players remove @s[scores={svm_ep.p.time_ability_01_delay=1..}] svm_ep.p.time_ability_01_delay 1
scoreboard players remove @s[scores={svm_ep.p.time_ability_02_delay=1..}] svm_ep.p.time_ability_02_delay 1
scoreboard players remove @s[scores={svm_ep.p.time_ability_03_delay=1..}] svm_ep.p.time_ability_03_delay 1
scoreboard players remove @s[scores={svm_ep.p.time_ability_04_delay=1..}] svm_ep.p.time_ability_04_delay 1
scoreboard players remove @s[scores={svm_ep.p.time_ability_05_delay=1..}] svm_ep.p.time_ability_05_delay 1
scoreboard players remove @s[scores={svm_ep.p.time_ability_06_delay=1..}] svm_ep.p.time_ability_06_delay 1
scoreboard players remove @s[scores={svm_ep.p.time_ability_07_delay=1..}] svm_ep.p.time_ability_07_delay 1
scoreboard players remove @s[scores={svm_ep.p.time_ability_08_delay=1..}] svm_ep.p.time_ability_08_delay 1
scoreboard players remove @s[scores={svm_ep.p.time_ability_09_delay=1..}] svm_ep.p.time_ability_09_delay 1
scoreboard players remove @s[scores={svm_ep.p.time_ability_10_delay=1..}] svm_ep.p.time_ability_10_delay 1



execute as @s[scores={svm_ep.using_move=1..100}] run function svm_ep:power/time/stop/start_tick
execute as @s[scores={svm_ep.using_move=101..200}] run function svm_ep:power/time/accelerate/start_tick
execute as @s[scores={svm_ep.using_move=201..300}] run function svm_ep:power/time/skip/tick
execute as @s[scores={svm_ep.using_move=301..400}] run function svm_ep:power/time/stamp/tick
execute as @s[scores={svm_ep.using_move=401..500}] run function svm_ep:power/time/rewind/tick
execute as @s[scores={svm_ep.using_move=501..700}] run function svm_ep:power/time/rewind/windup
execute as @s[scores={svm_ep.using_move=701..800}] run function svm_ep:power/time/stop/windup


