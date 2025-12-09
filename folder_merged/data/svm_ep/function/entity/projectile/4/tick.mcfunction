scoreboard players add @s svm_ep.lifetime 1
execute at @s run tp @s ^ ^ ^0.13 facing entity @n[distance=0.01..,scores={svm_ep.projectile_id=4}]
kill @s[scores={svm_ep.lifetime=2..}]