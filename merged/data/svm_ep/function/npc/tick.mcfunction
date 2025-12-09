#item replace entity @s[tag=svm_ep.npc_thunder_god] weapon with air
execute at @s unless entity @p[distance=..75] run return 0

execute as @s[scores={svm_ep.npc=1..}] at @s run return run function svm_ep:npc/advanced/tick
execute as @s[tag=svm_ep.npc_pemc] at @s run return run function svm_ep:npc/pemc/tick
execute as @s[tag=svm_ep.npc_thunder_god] at @s run return run function svm_ep:npc/thunder_god/tick
execute as @s[tag=svm_ep.npc_cherry_guardian] at @s run return run function svm_ep:npc/cherry_guardian/tick
execute as @s[tag=svm_ep.npc_calcite_guard] at @s run return run function svm_ep:npc/calcite_guard/tick
execute as @s[tag=svm_ep.npc_slime] at @s run return run function svm_ep:npc/slime/tick
execute as @s[tag=svm_ep.npc_test] at @s run return run function svm_ep:npc/test/tick
execute as @s[tag=svm_ep.npc_test2] at @s run return run function svm_ep:npc/test2/tick
execute as @s[tag=svm_ep.npc_gill] at @s run return run function svm_ep:npc/gill/tick
execute as @s[tag=svm_ep.npc_paradise_trader] at @s run return run function svm_ep:npc/paradise_trader/tick
execute as @s[tag=svm_ep.npc_adapter] at @s run return run function svm_ep:npc/adapter/tick

scoreboard players remove @s[scores={svm_ep.clear_levitation=1..}] svm_ep.clear_levitation 1
scoreboard players remove @s[scores={svm_ep.clear_strength=1..}] svm_ep.clear_strength 1

effect clear @s[scores={svm_ep.clear_levitation=1}] levitation
effect clear @s[scores={svm_ep.clear_strength=1}] strength