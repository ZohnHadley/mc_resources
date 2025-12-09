tag @s add repel


execute if entity @e[scores={svm_ep.p.gravity_punch=1},tag=executor] at @s summon marker run function svm_ep:power/gravity/field/tp
execute if entity @e[scores={svm_ep.p.gravity_punch=1},tag=executor] at @s summon marker run function svm_ep:power/gravity/field/tp
execute if entity @e[scores={svm_ep.p.gravity_punch=2},tag=executor] run scoreboard players set @s svm_ep.p.gravity_punched_normal 20
execute if entity @e[scores={svm_ep.p.gravity_punch=3},tag=executor] at @s summon marker run function svm_ep:power/gravity/repel_blast/tp
execute if entity @e[scores={svm_ep.p.gravity_punch=4},tag=executor] run scoreboard players set @s svm_ep.p.gravity_punched_reverse 5
tag @s remove repel
execute at @s run particle minecraft:explosion ~ ~1 ~ 1 1 1 1 3
execute at @s run playsound minecraft:entity.generic.explode master @a[distance=..50] ~ ~ ~ 2 2
execute at @s run summon marker ~ ~ ~ {Tags:["svm_ep.crack_3","svm_ep.crack"]}

execute at @s run playsound minecraft:item.shield.block master @a[distance=..50] ~ ~ ~ 1 0
execute at @s run summon marker ~ ~ ~ {Tags:["svm_ep.crack_2","svm_ep.crack"]}
tag @s remove hitby