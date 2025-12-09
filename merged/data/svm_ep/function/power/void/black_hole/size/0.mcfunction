scoreboard players add @a[distance=..150] svm_ep.shaking 1
particle minecraft:dust{color:[18000000f,18000000f,18000000f],scale:0.3f} ~ ~ ~ 0 0 0 0 1 force @a
execute at @s[scores={svm_ep.lifetime=15}] run particle minecraft:flash{color:0xffffffff} ~ ~ ~ 10 0 10 0 100 force @a
execute at @s[scores={svm_ep.lifetime=15}] run particle minecraft:end_rod ~ ~ ~ 10 0 10 1 200 force @a
execute at @s[scores={svm_ep.lifetime=15}] run scoreboard players add @a[distance=..150] svm_ep.shaking 5
execute at @s[scores={svm_ep.lifetime=15}] run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1 1.2 1

