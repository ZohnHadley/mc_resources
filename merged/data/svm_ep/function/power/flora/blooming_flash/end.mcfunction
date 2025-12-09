playsound minecraft:block.end_portal_frame.fill master @a[distance=..20] ~ ~ ~ 3 2
tp @s ~ ~ ~
scoreboard players reset @s svm_ep.p.flora_blooming_collect
scoreboard players reset @s svm_ep.p.flora_blooming_effect
tag @s remove end_raycast