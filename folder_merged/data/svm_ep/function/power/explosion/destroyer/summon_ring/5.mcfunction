data merge entity @s {transformation:{scale:[0f,0f,0f]},interpolation_duration:1,start_interpolation:-1}
tag @s add svm_ep.explosion_ring
tag @s add new631
item replace entity @s container.0 with minecraft:warped_fungus_on_a_stick[minecraft:item_model="svm_ep:explosion_summon3"]
execute as @a[distance=..50] at @s run playsound minecraft:block.iron_door.close master @s ~ ~ ~ 2 0
data merge entity @s {transformation:{scale:[145f,1f,145f]},interpolation_duration:5,start_interpolation:-1}

