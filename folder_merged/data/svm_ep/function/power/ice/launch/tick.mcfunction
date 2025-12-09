
execute as @s[scores={svm_ep.using_move=461..,svm_ep.mana=50..}] unless entity @s[scores={svm_ep.selected_ability=3}] run scoreboard players set @s svm_ep.using_move 480
execute if entity @e[tag=svm_ep.launched_ice] as @s[scores={svm_ep.mana=10..,svm_ep.selected_ability=1}] run function svm_ep:power/ice/launch/berg/tick

execute as @s[scores={svm_ep.using_move=..422}] run scoreboard players reset @s svm_ep.using_move
execute unless predicate svm_ep:holding_ability run return run scoreboard players reset @s svm_ep.using_move



execute at @s[scores={svm_ep.using_move=475}] run playsound minecraft:block.glass.break master @a[distance=..25] ~ ~ ~ 1 1.25 0.5
execute at @s[scores={svm_ep.using_move=470}] run playsound minecraft:block.glass.break master @a[distance=..25] ~ ~ ~ 1 1.25 0.5
execute at @s[scores={svm_ep.using_move=465}] run playsound minecraft:block.glass.break master @a[distance=..25] ~ ~ ~ 1 1.25 0.5

execute as @s[scores={svm_ep.using_move=461..}] run return 0

effect give @s minecraft:slowness 1 3 true
execute as @s[scores={svm_ep.using_move=460}] run function svm_ep:power/ice/launch/shatter/start

execute as @s[scores={svm_ep.using_move=448..}] run return 0
effect give @s minecraft:slowness 1 5 true

execute at @s anchored eyes positioned ^ ^ ^1 run function svm_ep:power/ice/launch/shatter/shoot
execute if predicate svm_ep:chance/33_percent run return 0
execute at @s anchored eyes positioned ^ ^ ^1 run function svm_ep:power/ice/launch/shatter/shoot
scoreboard players add @s svm_ep.mana_drain 233