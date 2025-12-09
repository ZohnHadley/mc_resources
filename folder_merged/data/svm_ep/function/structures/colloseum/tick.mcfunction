execute at @s unless block ~ ~ ~ minecraft:quartz_pillar run tag @s add svm_ep.colloseum_started

data modify entity @s CustomName set value [{"text":"T","color":"aqua"},{"text":"h","color":"#84FFFF"},{"text":"u","color":"#A9FFFF"},{"text":"n","color":"#C3FFFF"},{"text":"de","color":"#DAFFFF"},{"text":"r","color":"#C3FFFF"},{"text":" G","color":"#A9FFFF"},{"text":"o","color":"#84FFFF"},{"text":"d","color":"aqua"}]

scoreboard players add @s[tag=svm_ep.colloseum_started] svm_ep.colloseum_build 1

execute as @s[tag=svm_ep.colloseum_started] unless entity @s[scores={svm_ep.colloseum_build=17..}] run function svm_ep:structures/colloseum/tick_started
execute as @s[tag=svm_ep.colloseum_started] run function svm_ep:structures/colloseum/tick_started2


kill @s[scores={svm_ep.colloseum_build=260..}]