
execute at @s as @e[tag=!svm_ep.time_stop_resistant,distance=..40] if function svm_ep:system/check/spectator_from_ability unless entity @s[scores={svm_ep.time_stopped=0..}] unless entity @s[scores={svm_ep.time_stopping=1..}] run function svm_ep:time/stop_entity
scoreboard players remove @s svm_ep.time_stopping 1
effect give @s[scores={svm_ep.time_stopping=21..}] minecraft:night_vision 1 0 true
scoreboard players reset @s[scores={svm_ep.time_stopping=0}] svm.time_stopping

execute as @s[tag=svm_ep.time_user] at @s run function svm_ep:power/time/stop/tick
execute as @s[tag=svm_ep.copy_user] at @s run function svm_ep:power/time/stop/tick
