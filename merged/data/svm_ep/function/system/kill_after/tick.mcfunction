execute as @s[scores={svm_ep.kill_after=1..}] run return run scoreboard players remove @s svm_ep.kill_after 1



execute as @s[scores={svm_ep.kill_after_function=1..}] at @s run function svm_ep:system/kill_after/w_function
kill @s[type=!player,scores={svm_ep.kill_after=..0}]