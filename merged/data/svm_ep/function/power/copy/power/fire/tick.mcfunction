scoreboard players add @s svm_ep.p.copy_ability_31_delay 1

execute as @s[scores={svm_ep.using_move=1791..}] unless predicate svm_ep:holding_ability run function svm_ep:power/copy/power/fire/use
execute unless predicate svm_ep:holding_ability run scoreboard players reset @s svm_ep.using_move
execute at @s[scores={svm_ep.using_move=1791}] run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 0.25 0.7

execute as @s[scores={svm_ep.using_move=1701..1790}] at @s run function svm_ep:power/copy/power/fire/tick_blaze
