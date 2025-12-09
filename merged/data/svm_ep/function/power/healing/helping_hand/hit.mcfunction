execute as @n[tag=same_id] at @s run function svm_ep:power/healing/regenerational_aura/give_effect_base
playsound minecraft:block.end_portal_frame.fill master @a[distance=..30] ~ ~ ~ 1.5 0
particle minecraft:flash{color:0xffffffff}
#particle minecraft:item{item:amethyst_block} ~ ~1 ~ 0 0 0 0.2 30

kill @s