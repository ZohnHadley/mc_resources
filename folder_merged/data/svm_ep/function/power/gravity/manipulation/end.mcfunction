summon marker ~ ~ ~ {Tags:["rotator"]}
execute at @s as @n[tag=svm_ep.gravity_can_manipulate] at @s run function svm_ep:power/gravity/manipulation/rotate
kill @e[tag=rotator]