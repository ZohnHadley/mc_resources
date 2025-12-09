execute store result score @s svm_ep.numbers run random value 1..5
execute at @s run function svm_ep:system/set_random_rotation

execute as @s[scores={svm_ep.numbers=1}] at @s positioned ^ ^-8 ^40 run function svm_ep:structures/cherry_island/place_small 
execute as @s[scores={svm_ep.numbers=2}] at @s positioned ^ ^-8 ^55 run function svm_ep:structures/cherry_island/place_small 
execute as @s[scores={svm_ep.numbers=3}] at @s positioned ^ ^-8 ^70 run function svm_ep:structures/cherry_island/place_small 
execute as @s[scores={svm_ep.numbers=4}] at @s positioned ^ ^-8 ^85 run function svm_ep:structures/cherry_island/place_small 
execute as @s[scores={svm_ep.numbers=5}] at @s positioned ^ ^-8 ^100 run function svm_ep:structures/cherry_island/place_small 


execute if predicate svm_ep:chance/50_percent run scoreboard players add @s svm_ep.lifetime 1