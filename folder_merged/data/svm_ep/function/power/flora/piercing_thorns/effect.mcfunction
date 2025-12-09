
playsound minecraft:block.sweet_berry_bush.break master @a[distance=..30]
playsound minecraft:entity.player.attack.crit master @a[distance=..30] ~ ~ ~ 1 1.3


scoreboard players set @e[type=!#svm_ep:technical,tag=!executor,distance=..5] svm_ep.effect 1
scoreboard players add @e[type=!#svm_ep:technical,tag=!executor,distance=..5] svm_ep.e.flora_thorned 2
scoreboard players add @e[type=!#svm_ep:technical,tag=!executor,distance=..5,scores={svm_ep.e.flora_thorned=..20}] svm_ep.e.flora_thorned 20

particle minecraft:dust{color:[1f,0.05f,0.2f],scale:2} ~ ~ ~ 1 1 1 0 1
particle minecraft:dust{color:[0.7f,0.1f,0.25f],scale:1.3} ~ ~ ~ 1 1 1 0 1
particle minecraft:dust{color:[0.1f,0.7f,0.4f],scale:1} ~ ~ ~ 1 1 1 0 5

particle minecraft:block_marker{block_state:sweet_berry_bush} ~ ~ ~ 1.5 1.5 1.5 0 1
particle minecraft:crit ~ ~ ~ 1 1 1 1.85 8