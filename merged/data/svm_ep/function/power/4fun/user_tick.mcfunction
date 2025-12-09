scoreboard players remove @s[scores={svm_ep.p.4fun_ability_01_delay=1..}] svm_ep.p.4fun_ability_01_delay 1
scoreboard players remove @s[scores={svm_ep.p.4fun_ability_02_delay=1..}] svm_ep.p.4fun_ability_02_delay 1
scoreboard players remove @s[scores={svm_ep.p.4fun_ability_03_delay=1..}] svm_ep.p.4fun_ability_03_delay 1
scoreboard players remove @s[scores={svm_ep.p.4fun_ability_04_delay=1..}] svm_ep.p.4fun_ability_04_delay 1
scoreboard players remove @s[scores={svm_ep.p.4fun_ability_05_delay=1..}] svm_ep.p.4fun_ability_05_delay 1
scoreboard players remove @s[scores={svm_ep.p.4fun_ability_06_delay=1..}] svm_ep.p.4fun_ability_06_delay 1
scoreboard players remove @s[scores={svm_ep.p.4fun_ability_07_delay=1..}] svm_ep.p.4fun_ability_07_delay 1
scoreboard players remove @s[scores={svm_ep.p.4fun_ability_08_delay=1..}] svm_ep.p.4fun_ability_08_delay 1
scoreboard players remove @s[scores={svm_ep.p.4fun_ability_09_delay=1..}] svm_ep.p.4fun_ability_09_delay 1
scoreboard players remove @s[scores={svm_ep.p.4fun_ability_10_delay=1..}] svm_ep.p.4fun_ability_10_delay 1




execute as @s[scores={svm_ep.using_move=1..460}] run function svm_ep:power/4fun/domain/tick
execute at @s[scores={svm_ep.using_move=492}] run playsound minecraft:entity.ender_dragon.growl master @a[distance=..25] ~ ~ ~ 1 0 0.55
execute as @s[scores={svm_ep.using_move=501..1000}] run function svm_ep:power/4fun/meteor/tick


