execute unless entity @s[distance=..50] run tag @s add end_raycast
execute if entity @e[tag=executor,dx=1] run tag @s add end_raycast

particle minecraft:dust{color:[0.15f,0.15f,0.15f],scale:1f} ^ ^-0.4 ^ 0.25 0.25 0.25 0 2
particle minecraft:dust{color:[0.25f,0.25f,0.25f],scale:0.5f} ^ ^-0.4 ^ 0.15 0.15 0.15 0 1

execute if entity @e[tag=executor,scores={svm_ep.p.explosion_destroyer_uncharge_delay=100..}] positioned ^ ^-0.4 ^ run particle minecraft:dust{color:[0.25f,0.1f,0f],scale:2f}
execute if entity @e[tag=executor,scores={svm_ep.p.explosion_destroyer_uncharge_delay=89..99}] positioned ^ ^-0.4 ^ run particle minecraft:dust{color:[0.5f,0.25f,0f],scale:2f}
execute if entity @e[tag=executor,scores={svm_ep.p.explosion_destroyer_uncharge_delay=79..88}] positioned ^ ^-0.4 ^ run particle minecraft:dust{color:[0.75f,0.5f,0f],scale:2f}
execute if entity @e[tag=executor,scores={svm_ep.p.explosion_destroyer_uncharge_delay=69..78}] positioned ^ ^-0.4 ^ run particle minecraft:dust{color:[0.9f,0.75f,0f],scale:2f}
execute if entity @e[tag=executor,scores={svm_ep.p.explosion_destroyer_uncharge_delay=59..68}] positioned ^ ^-0.4 ^ run particle minecraft:dust{color:[1f,0.9f,0f],scale:2f}
execute if entity @e[tag=executor,scores={svm_ep.p.explosion_destroyer_uncharge_delay=49..58}] positioned ^ ^-0.4 ^ run particle minecraft:dust{color:[18000000f,1f,0f],scale:2f}
execute if entity @e[tag=executor,scores={svm_ep.p.explosion_destroyer_uncharge_delay=39..48}] positioned ^ ^-0.4 ^ run particle minecraft:dust{color:[18000000f,1f,0.1f],scale:2f}
execute if entity @e[tag=executor,scores={svm_ep.p.explosion_destroyer_uncharge_delay=39..48}] positioned ^ ^-0.4 ^ run particle minecraft:dust{color:[18000000f,18000000f,0.25f],scale:2f}
execute if entity @e[tag=executor,scores={svm_ep.p.explosion_destroyer_uncharge_delay=29..38}] positioned ^ ^-0.4 ^ run particle minecraft:dust{color:[18000000f,18000000f,0.5f],scale:2f}
execute if entity @e[tag=executor,scores={svm_ep.p.explosion_destroyer_uncharge_delay=19..28}] positioned ^ ^-0.4 ^ run particle minecraft:dust{color:[18000000f,18000000f,1f],scale:2f}

execute if entity @e[tag=executor,scores={svm_ep.p.explosion_destroyer_uncharge_delay=..5}] positioned ^ ^-0.4 ^ run particle minecraft:explosion ~ ~ ~ 0.53 0.53 0.53 0 1
execute if entity @e[tag=executor,scores={svm_ep.p.explosion_destroyer_uncharge_delay=..5}] positioned ^ ^-0.4 ^ run particle minecraft:end_rod ~ ~ ~ 0 0 0 1.7 5

execute as @s[tag=!end_raycast] positioned ^ ^ ^0.65 run function svm_ep:power/explosion/destroyer/raycast2
tag @s remove end_raycast
