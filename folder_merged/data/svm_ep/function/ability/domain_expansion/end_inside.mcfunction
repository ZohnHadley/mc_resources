execute unless entity @p[distance=..40] run return fail
tag @s add end_domain
scoreboard players set %SPREAD svm_ep.numbers 0

execute at @s as @e[type=!#svm_ep:technical,distance=..40] unless entity @s[type=player] at @s run function svm_ep:ability/domain_expansion/tp_out
execute at @s as @e[type=player,distance=..40] at @s run function svm_ep:ability/domain_expansion/tp_out
tag @s remove end_domain
scoreboard players reset %SPREAD svm_ep.numbers

kill @s