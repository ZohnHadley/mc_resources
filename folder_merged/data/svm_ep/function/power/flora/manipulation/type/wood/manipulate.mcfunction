
scoreboard players set @s svm_ep.lifetime -50
scoreboard players set @s svm_ep.kill_after 30
execute as @s[tag=svm_ep.flora_cannot_regrow] run return 1515
execute at @s unless block ~ ~ ~ #svm_ep:flora_manipulation/wood run return run kill @s

rotate @s facing ~ ~ ~
execute facing entity @s eyes run function svm_ep:power/flora/manipulation/pull_arrow

execute at @s run clone ~ ~ ~ ~ ~ ~ to svm_ep:technical 0 0 0 filtered #svm_ep:flora_manipulation/wood move

execute as @s[distance=..3] at @s positioned ^ ^ ^0.67 run return run function svm_ep:power/flora/manipulation/type/wood/move
execute at @s positioned ^ ^ ^1 run return run function svm_ep:power/flora/manipulation/type/wood/move