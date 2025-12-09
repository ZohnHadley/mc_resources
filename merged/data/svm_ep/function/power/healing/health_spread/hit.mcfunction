execute as @n[tag=same_id] run function svm_ep:power/healing/heal/heal
execute at @s run playsound minecraft:block.end_portal_frame.fill master @a[distance=..30] ~ ~ ~ 0.5 2
execute at @s run particle minecraft:flash{color:0xffffffff}

kill @s