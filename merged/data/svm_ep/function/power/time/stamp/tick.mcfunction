scoreboard players set @s svm_ep.numbers 0
execute unless predicate svm_ep:holding_ability run scoreboard players set @s svm_ep.numbers 1

scoreboard players reset @s[scores={svm_ep.numbers=1..}] svm_ep.using_move
execute as @s[scores={svm_ep.using_move=..360}] run scoreboard players set @s svm_ep.numbers 2

execute as @s[scores={svm_ep.numbers=1}] run function svm_ep:power/time/stamp/tp_to_location
execute at @s[scores={svm_ep.numbers=1}] run effect give @a[distance=..15] minecraft:blindness 2 0 true
execute as @s[scores={svm_ep.numbers=2}] run function svm_ep:power/time/stamp/save_location
