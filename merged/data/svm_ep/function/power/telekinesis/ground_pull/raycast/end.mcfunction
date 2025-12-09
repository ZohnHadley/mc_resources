summon marker ~ ~ ~ {Tags:["rotator"]}
execute as @n[tag=svm_ep.telekinesis_ground_pull] unless entity @s[distance=..1] at @s run tp @s ~ ~ ~ facing entity @n[tag=rotator]
scoreboard players remove @n[tag=svm_ep.telekinesis_ground_pull] svm_ep.lifetime 1

kill @e[tag=rotator]