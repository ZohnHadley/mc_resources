summon marker ^-0.1 ^ ^0.1 {Tags:["svm_ep.crack","svm_ep.crack_1"]}
summon marker ^0.1 ^ ^0.1 {Tags:["svm_ep.crack","svm_ep.crack_1"]}
summon marker ^ ^ ^0.1 {Tags:["svm_ep.crack","svm_ep.crack_1"]}

summon marker ^-0.1 ^ ^-0.4 {Tags:["svm_ep.crack","svm_ep.crack_1"]}
summon marker ^0.1 ^ ^-0.4 {Tags:["svm_ep.crack","svm_ep.crack_1"]}
summon marker ^ ^ ^-0.4 {Tags:["svm_ep.crack","svm_ep.crack_1"]}

execute as @e[dx=0,tag=!executor,type=!#svm_ep:technical] run damage @s 8 svm_ep:bypass_cooldown by @e[tag=executor,limit=1]
execute as @e[dx=0,tag=!executor,type=!#svm_ep:technical] at @s run particle minecraft:crit ~ ~0.8 ~ 0.3 0.7 0.3 0.3 15
execute as @e[dx=0,tag=!executor,type=!#svm_ep:technical] at @s run playsound minecraft:entity.player.attack.crit hostile @a[distance=..13] ~ ~1 ~ 1 1.2
execute as @e[dx=0,tag=!executor,type=!#svm_ep:technical] run effect give @s slowness 2 2 true
