execute unless entity @e[tag=svm_ep.flora_leaves_marker,distance=..50] unless entity @e[tag=svm_ep.flora_manipulation.leaves,distance=..50] run return run scoreboard players reset @s svm_ep.using_move
execute as @e[tag=svm_ep.flora_leaves_marker,distance=..50,limit=5,sort=random] run function svm_ep:power/flora/manipulation/type/leaves/manipulate
execute as @e[tag=svm_ep.flora_manipulation.leaves,distance=..50,sort=random,limit=3] run rotate @s facing ~ ~1 ~
execute as @e[tag=svm_ep.flora_manipulation.leaves,distance=..50,sort=nearest,limit=3] run rotate @s facing ~ ~1 ~
scoreboard players remove @e[tag=svm_ep.flora_manipulation.leaves,distance=..50,sort=nearest,limit=7] svm_ep.lifetime 1
scoreboard players add @s svm_ep.mana_drain 25
