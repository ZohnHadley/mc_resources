execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run scoreboard players set @s svm_ep.numbers 1
execute unless entity @s[distance=..6] run scoreboard players set @s svm_ep.numbers 1
execute if block ~ ~ ~ #minecraft:ice run scoreboard players set @s svm_ep.numbers 2


execute as @s[scores={svm_ep.numbers=0}] positioned ^ ^ ^0.2 run return run function svm_ep:power/ice/launch/berg/raycast
execute as @s[scores={svm_ep.numbers=2}] summon item_display run function svm_ep:power/ice/launch/berg/summon
