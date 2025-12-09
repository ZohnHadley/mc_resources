execute at @s run particle minecraft:dust{color:[0.9f,0.9f,18000000f],scale:2f} ~ ~ ~ 0.25 0.25 0.25 1 44 force @a
execute at @s run particle minecraft:dust{color:[1f,1f,18000000f],scale:2f} ~ ~ ~ 0.15 0.15 0.15 1 33 force @a
execute at @s run particle minecraft:dust{color:[1f,1f,18000000f],scale:2f} ~ ~ ~ 0.05 0.05 0.05 1 25 force @a
execute at @s run particle minecraft:dust{color:[0.1f,0.1f,0.25f],scale:2f} ~ ~ ~ 1.5 1.5 1.5 1 3 force @a
execute at @s run particle minecraft:dust{color:[0.1f,0.1f,0.5f],scale:2f} ~ ~ ~ 1 1 1 1 5 force @a
execute at @s run particle minecraft:dust{color:[0.1f,0.1f,1f],scale:1f} ~ ~ ~ 0.7 0.7 0.7 1 15 force @a
execute at @s run particle minecraft:dust{color:[0.1f,0.1f,18000000f],scale:1f} ~ ~ ~ 1.75 1.75 1.75 1 1 force @a
execute at @s run particle minecraft:dust{color:[0.3f,0.3f,18000000f],scale:1f} ~ ~ ~ 1.5 1.5 1.5 1 4 force @a
execute at @s run particle minecraft:dust{color:[0.5f,0.5f,18000000f],scale:1f} ~ ~ ~ 1.25 1.25 1.25 1 3 force @a
execute at @s run particle minecraft:dust{color:[0.7f,0.7f,18000000f],scale:1f} ~ ~ ~ 1 1 1 1 2 force @a

execute at @s run summon marker ~ ~ ~ {Tags:["svm_ep.crack_3","svm_ep.crack"]}



execute at @s as @e[tag=!immune,type=!#svm_ep:gravity_no_pull,distance=..9,tag=!executor,sort=nearest] run function svm_ep:power/gravity/pull/in_range
execute if predicate svm_ep:chance/10_percent run playsound minecraft:entity.wither.break_block master @a[distance=..50] ~ ~ ~ 0.5 0

scoreboard players add @a[distance=..15] svm_ep.shaking 1
