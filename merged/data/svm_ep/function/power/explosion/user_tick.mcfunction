scoreboard players remove @s[scores={svm_ep.p.explosion_ability_01_delay=1..}] svm_ep.p.explosion_ability_01_delay 1
scoreboard players remove @s[scores={svm_ep.p.explosion_ability_02_delay=1..}] svm_ep.p.explosion_ability_02_delay 1
scoreboard players remove @s[scores={svm_ep.p.explosion_ability_03_delay=1..}] svm_ep.p.explosion_ability_03_delay 1
scoreboard players remove @s[scores={svm_ep.p.explosion_ability_04_delay=1..}] svm_ep.p.explosion_ability_04_delay 1
scoreboard players remove @s[scores={svm_ep.p.explosion_ability_05_delay=1..}] svm_ep.p.explosion_ability_05_delay 1
scoreboard players remove @s[scores={svm_ep.p.explosion_ability_06_delay=1..}] svm_ep.p.explosion_ability_06_delay 1



scoreboard players remove @s[scores={svm_ep.p.explosion_ability_10_delay=1..}] svm_ep.p.explosion_ability_10_delay 1




execute as @s[scores={svm_ep.p.explosion_destroyer_uncharge_delay=1..}] run function svm_ep:power/explosion/destroyer/tick
execute as @s[scores={svm_ep.using_move=1..100}] run function svm_ep:power/explosion/barrier/tick
execute as @s[scores={svm_ep.using_move=101..200}] run function svm_ep:power/explosion/launch/tick
execute as @s[scores={svm_ep.using_move=201..300}] run function svm_ep:power/explosion/dash/tick
execute as @s[scores={svm_ep.using_move=301..600}] run function svm_ep:power/explosion/train/tick
execute as @s[scores={svm_ep.using_move=601..700}] run function svm_ep:power/explosion/train/start_tick
execute as @s[scores={svm_ep.using_move=701..800}] run function svm_ep:power/explosion/bullet/start_tick
execute as @s[scores={svm_ep.using_move=801..900}] run function svm_ep:power/explosion/rexplode/tick
execute as @s[scores={svm_ep.using_move=901..1000}] run function svm_ep:power/explosion/small/tick

scoreboard players reset @s[scores={svm_ep.using_move=601}] svm_ep.using_move
scoreboard players reset @s[scores={svm_ep.using_move=301}] svm_ep.using_move
scoreboard players reset @s[scores={svm_ep.using_move=180}] svm_ep.using_move
scoreboard players reset @s[scores={svm_ep.using_move=68}] svm_ep.using_move
scoreboard players reset @s[scores={svm_ep.using_move=244}] svm_ep.using_move