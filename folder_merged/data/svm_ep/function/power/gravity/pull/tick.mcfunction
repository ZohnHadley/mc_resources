scoreboard players add @s svm_ep.using_move 1
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move
scoreboard players set @s svm_ep.p.gravity_ability_02_delay 100

execute unless entity @s[scores={svm_ep.mana=1..}] run scoreboard players reset @s svm_ep.using_move
scoreboard players add @s[scores={svm_ep.used_move=..680}] svm_ep.used_move 4

scoreboard players add @s svm_ep.mana_drain 35


execute as @s[scores={svm_ep.mana=..0}] run scoreboard players reset @s svm_ep.p.gravity_repel_zone

tag @s add executor

scoreboard players add @s svm_ep.lifetime 1
execute as @e[type=marker,tag=svm_ep.gravity_pull] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id
scoreboard players set @e[tag=same_id] svm_ep.lifetime 10
scoreboard players add @e[tag=same_id] svm_ep.p.gravity_pull_charge 1
execute at @s anchored eyes positioned ^ ^ ^9.4 run summon marker ~ ~ ~ {Tags:["rotate_to"]}
execute as @e[tag=same_id] at @s run tp @s ^ ^ ^0.75 facing entity @e[tag=rotate_to,limit=1]
execute as @e[tag=same_id] at @s run tp @s[scores={svm_ep.p.gravity_pull_charge=1..40}] ^ ^ ^0.25 facing entity @e[tag=rotate_to,limit=1]
execute as @e[tag=same_id] at @s run tp @s[scores={svm_ep.p.gravity_pull_charge=41..80}] ^ ^ ^0.25 facing entity @e[tag=rotate_to,limit=1]

execute at @e[tag=same_id,scores={svm_ep.p.gravity_pull_charge=1}] run effect give @a[distance=..15] minecraft:blindness 1 0 true
execute at @e[tag=same_id,scores={svm_ep.p.gravity_pull_charge=41}] run effect give @a[distance=..25] minecraft:blindness 1 0 true
kill @e[tag=rotate_to]
tag @s remove executor
tag @e[type=marker] remove same_id