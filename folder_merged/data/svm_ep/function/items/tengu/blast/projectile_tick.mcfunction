scoreboard players add @s svm_ep.lifetime 1
tag @s add executor

execute as @a[distance=..5] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
tag @e[distance=..2.2,type=!#svm_ep:technical,tag=!same_id] add caught
tag @e[dx=1,type=!#svm_ep:technical,tag=!same_id] add caught

execute at @s if block ^ ^ ^0.45 #svm_ep:no_physical_hitbox run tp @s ^ ^ ^0.45
tag @e[distance=..2.2,type=!#svm_ep:technical,tag=!same_id] add caught
execute at @s if block ^ ^ ^0.45 #svm_ep:no_physical_hitbox run tp @s ^ ^ ^0.45
tag @e[distance=..2.2,type=!#svm_ep:technical,tag=!same_id] add caught
execute at @s if block ^ ^ ^0.45 #svm_ep:no_physical_hitbox run tp @s ^ ^ ^0.45
tag @e[distance=..2.2,type=!#svm_ep:technical,tag=!same_id] add caught
execute at @s if block ^ ^ ^0.45 #svm_ep:no_physical_hitbox run tp @s ^ ^ ^0.45
tag @e[distance=..2.2,type=!#svm_ep:technical,tag=!same_id] add caught
execute at @s if block ^ ^ ^0.45 #svm_ep:no_physical_hitbox run tp @s ^ ^ ^0.45
execute at @s run tp @e[tag=caught] ~ ~ ~

particle minecraft:dust{color:[1f,1f,1f],scale:1.5f} ~ ~ ~ 0.86 0.86 0.86 0 5
execute at @s[scores={svm_ep.lifetime=4}] run function svm_ep:items/tengu/blast/circle/small
execute at @s[scores={svm_ep.lifetime=6}] run function svm_ep:items/tengu/blast/circle/medium
execute at @s[scores={svm_ep.lifetime=8}] run function svm_ep:items/tengu/blast/circle/large

execute at @s[scores={svm_ep.lifetime=10..}] run tp @s ^ ^ ^-1
execute at @s[scores={svm_ep.lifetime=10..}] as @e[tag=caught] run function svm_ep:items/tengu/blast/blast

tag @s remove executor
tag @a[distance=..10] remove same_id
tag @e[distance=..15] remove caught
kill @s[scores={svm_ep.lifetime=10..}]