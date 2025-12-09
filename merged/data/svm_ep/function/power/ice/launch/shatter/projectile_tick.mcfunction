scoreboard players add @s svm_ep.lifetime 1

tag @s add executor




execute at @s[tag=!hit] run function svm_ep:power/ice/launch/shatter/move
execute at @s[tag=!hit] run function svm_ep:power/ice/launch/shatter/move
execute at @s run rotate @s[scores={svm_ep.lifetime=20..}] ~ ~3
execute at @s run rotate @s[scores={svm_ep.lifetime=30..}] ~ ~4
execute at @s run rotate @s[scores={svm_ep.lifetime=40..}] ~ ~5

execute as @e[tag=hitby] run function svm_ep:power/ice/launch/shatter/hitby_check

tag @s remove executor
tag @s[scores={svm_ep.lifetime=230..}] add hit
execute as @s[tag=hit] at @s run function svm_ep:power/ice/launch/shatter/hit
