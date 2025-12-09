

execute as @e[tag=!same_id,dx=1,type=!#svm_ep:technical] run damage @s 0.7 minecraft:no_cooldown by @n[tag=svm_ep.flora_user,tag=same_id]
execute as @e[tag=!same_id,distance=..1,type=!#svm_ep:technical] run damage @s 0.7 minecraft:no_cooldown by @n[tag=svm_ep.flora_user,tag=same_id]

playsound minecraft:block.wet_grass.break master @a ~ ~ ~ 1 0
playsound minecraft:block.wet_grass.place master @a ~ ~ ~ 1 2
particle minecraft:spore_blossom_air ~ ~ ~ 0.1 0.1 0.1 0 15
particle minecraft:dust{color:[0.5f,0.6f,0.3f],scale:1.5f} ^ ^ ^-0.1 0.2 0.2 0.2 0 3
particle minecraft:item{item:kelp} ^ ^ ^-0.2 0 0 0 0.15 14
kill @s