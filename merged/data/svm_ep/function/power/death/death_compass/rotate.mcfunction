#AT @S SUMMON MARKER AT @S
tp @s ~ ~ ~ facing entity @n[scores={svm_ep.e.haunted=7200..}] eyes
execute unless entity @e[scores={svm_ep.e.haunted=7200..}] run tp @s ~ ~ ~ facing entity @n[type=!#svm_ep:technical,tag=!svm_ep.death_user,distance=..100] eyes
execute unless entity @e[type=!#svm_ep:technical,tag=!svm_ep.death_user,distance=..100] run function svm_ep:system/set_random_rotation

execute at @s run function svm_ep:power/death/death_compass/point

kill @s