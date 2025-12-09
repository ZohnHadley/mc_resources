scoreboard players remove @s[scores={svm_ep.p.gravity_ability_01_delay=1..}] svm_ep.p.gravity_ability_01_delay 1
scoreboard players remove @s[scores={svm_ep.p.gravity_ability_02_delay=1..}] svm_ep.p.gravity_ability_02_delay 1
scoreboard players remove @s[scores={svm_ep.p.gravity_ability_03_delay=1..}] svm_ep.p.gravity_ability_03_delay 1
scoreboard players remove @s[scores={svm_ep.p.gravity_ability_04_delay=1..}] svm_ep.p.gravity_ability_04_delay 1
scoreboard players remove @s[scores={svm_ep.p.gravity_ability_05_delay=1..}] svm_ep.p.gravity_ability_05_delay 1
scoreboard players remove @s[scores={svm_ep.p.gravity_ability_06_delay=1..}] svm_ep.p.gravity_ability_06_delay 1


#execute as @s[type=!player] run function svm_ep:npc/graster/tick

execute as @s[scores={svm_ep.using_move=1..100}] run function svm_ep:power/gravity/pull/tick
execute as @s[scores={svm_ep.using_move=101..200}] run function svm_ep:power/gravity/repel_blast/tick
execute as @s[scores={svm_ep.using_move=201..300}] run function svm_ep:power/gravity/field/tick
execute as @s[scores={svm_ep.using_move=301..400}] run function svm_ep:power/gravity/strengthen/tick
execute as @s[scores={svm_ep.using_move=401..500}] run function svm_ep:power/gravity/manipulation/tick
execute as @s[scores={svm_ep.using_move=501..600}] run function svm_ep:power/gravity/anchor/tick
execute as @s[scores={svm_ep.using_move=601..700}] run function svm_ep:power/gravity/low/start_tick
execute as @s[scores={svm_ep.using_move=701..800}] run function svm_ep:power/gravity/field/blast/tick

execute as @s[scores={svm_ep.p.gravity_repel_zone=1}] at @s run function svm_ep:power/gravity/repel/tick
execute as @s[scores={svm_ep.p.gravity_low=1..}] run function svm_ep:power/gravity/low/tick
execute as @s[scores={svm_ep.p.gravity_revert=1..}] run function svm_ep:power/gravity/revert/tick
