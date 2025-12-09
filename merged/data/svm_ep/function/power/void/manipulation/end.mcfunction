summon marker ~ ~ ~ {Tags:["rotator"]}
execute at @s as @e[tag=same_id,limit=1,sort=nearest] at @s run function svm_ep:power/void/manipulation/rotate
kill @e[tag=rotator]