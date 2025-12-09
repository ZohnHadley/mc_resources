execute at @s run particle minecraft:dust{color:[0.9f,18000000f,0.9f],scale:3f} ~ ~ ~ 0.35 0.35 0.35 1 5 force @a
execute at @s run particle minecraft:dust{color:[1f,18000000f,1f],scale:3f} ~ ~ ~ 0.18 0.18 0.18 1 10 force @a

execute at @s run particle minecraft:dust{color:[0.1f,18000000f,0.1f],scale:2.1f} ~ ~ ~ 6 6 6 1 3 force @a
execute at @s run particle minecraft:dust{color:[0.3f,18000000f,0.3f],scale:2.4f} ~ ~ ~ 8 8 8 1 3 force @a
execute at @s run particle minecraft:dust{color:[0.5f,18000000f,0.5f],scale:2.7f} ~ ~ ~ 10 10 10 1 3 force @a
execute at @s run particle minecraft:dust{color:[0.7f,18000000f,0.7f],scale:3f} ~ ~ ~ 12 12 12 1 3 force @a

execute at @s run tp @s ~ ~ ~ ~4 0
execute at @s[scores={svm_ep.lifetime=110..}] run tp @s ~ ~ ~ ~3 0
execute at @s[scores={svm_ep.lifetime=120..}] run tp @s ~ ~ ~ ~3 0
execute at @s[scores={svm_ep.lifetime=130..}] run tp @s ~ ~ ~ ~3 0
execute at @s[scores={svm_ep.lifetime=140..}] run tp @s ~ ~ ~ ~3 0
execute at @s[scores={svm_ep.lifetime=150..}] run tp @s ~ ~ ~ ~3 0
execute at @s[scores={svm_ep.lifetime=160..}] run tp @s ~ ~ ~ ~3 0
execute at @s[scores={svm_ep.lifetime=170..}] run tp @s ~ ~ ~ ~3 0
execute at @s[scores={svm_ep.lifetime=180..}] run tp @s ~ ~ ~ ~3 0
execute at @s[scores={svm_ep.lifetime=190..}] run tp @s ~ ~ ~ ~3 0
execute at @s run particle minecraft:dust{color:[0.1f,0.25f,0.1f],scale:3f} ^ ^ ^2 0.4 0.4 0.4 1 3 force @a
execute at @s run particle minecraft:dust{color:[0.2f,0.5f,0.2f],scale:3f} ^ ^ ^3 0.4 0.4 0.4 1 3 force @a
execute at @s run particle minecraft:dust{color:[0.3f,0.75f,0.3f],scale:3f} ^ ^ ^4 0.4 0.4 0.4 1 3 force @a
execute at @s run particle minecraft:dust{color:[0.4f,1f,0.4f],scale:3f} ^ ^ ^5 0.4 0.4 0.4 1 3 force @a
execute at @s run particle minecraft:dust{color:[0.5f,18000000f,0.5f],scale:3f} ^ ^ ^6 0.4 0.4 0.4 1 3 force @a


tag @s add executor
execute at @s as @a[scores={svm_ep.p.gravity_repel_zone=1}] run tag @s add immune
execute at @s as @e[type=marker,tag=svm_ep.crack] run tag @s add immune
execute at @s as @e[tag=!immune,type=!#svm_ep:gravity_no_repel,distance=..30,tag=!executor,sort=nearest] run function svm_ep:power/gravity/field/in_range
tag @a remove immune
tag @s remove executor


execute at @s[scores={svm_ep.lifetime=200..}] run particle minecraft:end_rod ~ ~ ~ 0 0 0 2 100
execute at @s[scores={svm_ep.lifetime=200..}] run particle minecraft:flash{color:0xffffffff}
execute at @s[scores={svm_ep.lifetime=200..}] run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 2 1
execute at @s[scores={svm_ep.lifetime=200..}] run playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 2 1
execute at @s[scores={svm_ep.lifetime=200..}] run effect clear @a[distance=..15] slow_falling

#tellraw @a ["",{"text":"XD ","color":"#858585"},{"score":{"name":"@s","objective":"svm_ep.lifetime"},"color":"#858585"}]

kill @s[scores={svm_ep.lifetime=200..}]