execute if entity @n[type=#svm_ep:technical,tag=svm_ep.root_entangle_delay,distance=..5] run return run tellraw @s [{"text":"Can't use here, the ability has been used here recently","color":"red"},{"text":"!","color":"dark_gray"}]
execute as @e[type=!#svm_ep:technical,tag=!executor,distance=..7] at @s run function svm_ep:power/flora/root_entangle/in_range
execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["svm_ep.flora_block_on_cooldown","svm_ep.root_entangle_delay","svm_ep.temporary_marker"],Fire:-200}
particle minecraft:dust{color:[0.61f,0.4f,0.25f],scale:1.5f} ~ ~0.3 ~ 0.4 0.5 0.4 0 20
particle minecraft:item{item:rooted_dirt} ~ ~ ~ 0 0 0 0.15 50
playsound minecraft:block.rooted_dirt.place master @a[distance=..25] ~ ~ ~ 1 0
