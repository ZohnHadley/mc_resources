execute as @e[tag=!same_id,type=!#svm_ep:technical,dx=0] run function svm_ep:power/slime/spit/hit_by
summon minecraft:marker ~ ~ ~ {Tags:["svm_ep.slime_spit2"]}
scoreboard players set @e[tag=svm_ep.slime_spit2] svm_ep.projectile 1
playsound minecraft:entity.slime.death master @a[distance=..25] ~ ~ ~ 1 0.7
playsound minecraft:entity.slime.death master @a[distance=..25] ~ ~ ~ 1 0.7
playsound minecraft:entity.slime.death master @a[distance=..25] ~ ~ ~ 1 0.7
particle minecraft:item{item:slime_ball} ~ ~0.5 ~ 0 0 0 0.6 120
kill @s