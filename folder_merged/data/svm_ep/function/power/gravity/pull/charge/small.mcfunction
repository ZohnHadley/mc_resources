execute at @s run particle minecraft:dust{color:[0.9f,0.9f,18000000f],scale:1.5f} ~ ~ ~ 0.15 0.15 0.15 1 15 force @a
execute at @s run particle minecraft:dust{color:[1f,1f,18000000f],scale:2f} ~ ~ ~ 0.07 0.07 0.07 1 10 force @a
execute at @s run particle minecraft:dust{color:[1f,1f,18000000f],scale:3f} ~ ~ ~ 0.025 0.025 0.025 1 5 force @a
execute at @s run particle minecraft:dust{color:[0.1f,0.1f,0.25f],scale:1f} ~ ~ ~ 0.37 0.37 0.37 1 6 force @a
execute at @s run particle minecraft:dust{color:[0.1f,0.1f,0.5f],scale:1f} ~ ~ ~ 1 1 1 1 1 force @a
execute at @s run particle minecraft:dust{color:[0.1f,0.1f,1f],scale:0.5f} ~ ~ ~ 0.7 0.7 0.7 1 5 force @a
execute at @s run particle minecraft:dust{color:[0.1f,0.1f,18000000f],scale:0.5f} ~ ~ ~ 1.75 1.75 1.75 1 2 force @a
execute at @s run particle minecraft:dust{color:[0.3f,0.3f,18000000f],scale:0.5f} ~ ~ ~ 1.5 1.5 1.5 1 3 force @a
execute at @s run particle minecraft:dust{color:[0.5f,0.5f,18000000f],scale:0.5f} ~ ~ ~ 1.25 1.25 1.25 1 1 force @a
execute at @s run particle minecraft:dust{color:[0.7f,0.7f,18000000f],scale:0.5f} ~ ~ ~ 1 1 1 1 1 force @a

execute at @s run summon marker ~ ~ ~ {Tags:["svm_ep.crack_2","svm_ep.crack"]}


execute at @s as @e[tag=!immune,type=!#svm_ep:gravity_no_pull,distance=..4.5,tag=!executor,sort=nearest] run function svm_ep:power/gravity/pull/in_range
execute if predicate svm_ep:chance/5_percent run playsound minecraft:entity.wither.break_block master @a[distance=..50] ~ ~ ~ 0.5 0

scoreboard players add @a[distance=..5] svm_ep.shaking 1