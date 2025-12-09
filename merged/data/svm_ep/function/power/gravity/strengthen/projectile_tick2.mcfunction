effect give @a[distance=..10] slowness 1 3 true
particle minecraft:raid_omen ~ ~ ~ 1 1 1 1.5 3
particle minecraft:dust{color:[18000000f,0.25f,0.3f],scale:2f} ~ ~ ~ 1.3 1.3 1.3 0.5 10
playsound minecraft:entity.warden.attack_impact master @a[distance=..25] ~ ~ ~ 1 0.7
scoreboard players add @e[tag=svm_ep.gravity_field,distance=..4] svm_ep.p.gravity_field_strength 9
scoreboard players add @e[tag=svm_ep.gravity_field,distance=..4] svm_ep.lifetime 50
execute as @e[type=!#svm_ep:technical,dx=0] run function svm_ep:power/gravity/strengthen/mob
execute as @e[type=!#svm_ep:technical,distance=..4] run function svm_ep:power/gravity/strengthen/mob
tp @s ~ ~-0.4 ~
summon marker ~ ~ ~ {Tags:["svm_ep.crack_3","svm_ep.crack"]}
