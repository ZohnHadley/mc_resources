summon marker ~ ~0.5 ~ {Tags:["rotator"]}
execute at @s as @e[tag=svm_ep.razor_feather,sort=random,limit=5] at @s run function svm_ep:power/harpie/manipulation/rotate
execute at @s as @e[tag=svm_ep.razor_feather,sort=nearest,limit=5] at @s run function svm_ep:power/harpie/manipulation/rotate
kill @e[tag=rotator]