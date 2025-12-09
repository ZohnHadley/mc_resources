scoreboard players remove @s[scores={svm_ep.p.phase_ability_01_delay=1..}] svm_ep.p.phase_ability_01_delay 1
scoreboard players remove @s[scores={svm_ep.p.phase_ability_02_delay=1..}] svm_ep.p.phase_ability_02_delay 1
scoreboard players remove @s[scores={svm_ep.p.phase_ability_03_delay=1..}] svm_ep.p.phase_ability_03_delay 1
scoreboard players remove @s[scores={svm_ep.p.phase_ability_04_delay=1..}] svm_ep.p.phase_ability_04_delay 1
scoreboard players remove @s[scores={svm_ep.p.phase_ability_05_delay=1..}] svm_ep.p.phase_ability_05_delay 1
scoreboard players remove @s[scores={svm_ep.p.phase_ability_06_delay=1..}] svm_ep.p.phase_ability_06_delay 1
scoreboard players remove @s[scores={svm_ep.p.phase_ability_07_delay=1..}] svm_ep.p.phase_ability_07_delay 1
scoreboard players remove @s[scores={svm_ep.p.phase_ability_08_delay=1..}] svm_ep.p.phase_ability_08_delay 1
scoreboard players remove @s[scores={svm_ep.p.phase_ability_09_delay=1..}] svm_ep.p.phase_ability_09_delay 1
scoreboard players remove @s[scores={svm_ep.p.phase_ability_10_delay=1..}] svm_ep.p.phase_ability_10_delay 1
scoreboard players remove @s[scores={svm_ep.p.phase_ability_11_delay=1..}] svm_ep.p.phase_ability_11_delay 1
scoreboard players remove @s[scores={svm_ep.p.phase_used_smash=1..}] svm_ep.p.phase_used_smash 1




execute as @s[scores={svm_ep.using_move=1..200}] run function svm_ep:power/phase/fury/tick
execute as @s[scores={svm_ep.using_move=201..400}] run function svm_ep:power/phase/dash/tick
execute as @s[scores={svm_ep.using_move=401..600}] run function svm_ep:power/phase/phase/tick
execute as @s[scores={svm_ep.using_move=601..800}] run function svm_ep:power/phase/awakening/start_tick
execute as @s[scores={svm_ep.using_move=801..1000}] run function svm_ep:power/phase/smash/tick
execute as @s[scores={svm_ep.using_move=1001..1200}] run function svm_ep:power/phase/ground_smash/tick
execute as @s[scores={svm_ep.using_move=1201..1400},type=player] run function svm_ep:power/phase/full_phase/tick
execute as @s[scores={svm_ep.using_move=1201..1400},type=!player] run function svm_ep:power/phase/full_phase/tick_not_player

execute as @s[scores={svm_ep.p.phase_awakening_lenght=1..}] run function svm_ep:power/phase/awakening/tick

scoreboard players reset @s[scores={svm_ep.using_move=201}] svm_ep.using_move
scoreboard players reset @s[scores={svm_ep.using_move=401}] svm_ep.using_move
scoreboard players reset @s[scores={svm_ep.using_move=697}] svm_ep.using_move
scoreboard players reset @s[scores={svm_ep.using_move=801}] svm_ep.using_move
