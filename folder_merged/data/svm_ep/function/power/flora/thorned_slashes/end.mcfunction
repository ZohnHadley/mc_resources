summon marker ^-0.1 ^ ^0.1 {Tags:["svm_ep.crack","svm_ep.crack_1"]}
summon marker ^0.1 ^ ^0.1 {Tags:["svm_ep.crack","svm_ep.crack_1"]}
summon marker ^ ^ ^0.1 {Tags:["svm_ep.crack","svm_ep.crack_1"]}

summon marker ^-0.1 ^ ^-0.4 {Tags:["svm_ep.crack","svm_ep.crack_1"]}
summon marker ^0.1 ^ ^-0.4 {Tags:["svm_ep.crack","svm_ep.crack_1"]}
summon marker ^ ^ ^-0.4 {Tags:["svm_ep.crack","svm_ep.crack_1"]}

execute as @e[dx=0,tag=!executor,type=!#svm_ep:technical,team=!svm_ep.cherry_guardians] run damage @s 2.5 svm_ep:bypass_cooldown by @e[tag=executor,limit=1]
execute as @e[dx=0,tag=!executor,type=!#svm_ep:technical,team=!svm_ep.cherry_guardians] run scoreboard players add @s svm_ep.e.flora_thorned 20
execute as @e[dx=0,tag=!executor,type=!#svm_ep:technical,team=!svm_ep.cherry_guardians] run scoreboard players set @s svm_ep.effect 1
execute as @e[dx=0,tag=!executor,type=!#svm_ep:technical,team=!svm_ep.cherry_guardians] at @s run particle minecraft:crit ~ ~0.8 ~ 0.3 0.7 0.3 0.3 15
execute as @e[dx=0,tag=!executor,type=!#svm_ep:technical,team=!svm_ep.cherry_guardians] at @s run playsound minecraft:entity.player.attack.crit hostile @a[distance=..13] ~ ~1 ~ 1 1.2
execute as @e[dx=0,tag=!executor,type=!#svm_ep:technical,team=!svm_ep.cherry_guardians] run effect give @s slowness 2 2 true
