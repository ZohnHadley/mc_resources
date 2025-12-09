execute at @s run particle minecraft:dust{color:[0.9f,0.9f,18000000f],scale:3f} ~ ~ ~ 0.45 0.45 0.45 1 350 force @a
execute at @s run particle minecraft:dust{color:[1f,1f,18000000f],scale:3f} ~ ~ ~ 0.35 0.35 0.35 1 400 force @a
execute at @s run particle minecraft:dust{color:[1f,1f,18000000f],scale:3f} ~ ~ ~ 0.1 0.1 0.1 1 400 force @a
execute at @s run particle minecraft:dust{color:[0.1f,0.1f,0.25f],scale:3f} ~ ~ ~ 2.5 2.5 2.5 1 25 force @a
execute at @s run particle minecraft:dust{color:[0.1f,0.1f,0.5f],scale:2f} ~ ~ ~ 2.25 2.25 2.25 1 25 force @a
execute at @s run particle minecraft:dust{color:[0.1f,0.1f,1f],scale:2f} ~ ~ ~ 2 2 2 1 25 force @a
execute at @s run particle minecraft:dust{color:[0.1f,0.1f,18000000f],scale:1f} ~ ~ ~ 1.75 1.75 1.75 1 5 force @a
execute at @s run particle minecraft:dust{color:[0.3f,0.3f,18000000f],scale:1f} ~ ~ ~ 1.5 1.5 1.5 1 10 force @a
execute at @s run particle minecraft:dust{color:[0.5f,0.5f,18000000f],scale:1f} ~ ~ ~ 1.25 1.25 1.25 1 15 force @a
execute at @s run particle minecraft:dust{color:[0.7f,0.7f,18000000f],scale:1f} ~ ~ ~ 1 1 1 1 30 force @a

execute at @s run summon marker ~ ~ ~ {Tags:["svm_ep.crack_4","svm_ep.crack"]}


execute at @s as @e[tag=!immune,type=!#svm_ep:gravity_no_pull,distance=..18,tag=!executor,sort=nearest] run function svm_ep:power/gravity/pull/in_range
execute if predicate svm_ep:chance/20_percent run playsound minecraft:entity.wither.break_block master @a[distance=..50] ~ ~ ~ 0.5 0


scoreboard players add @a[distance=..30] svm_ep.shaking 1
