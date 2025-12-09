effect give @s minecraft:slowness 1 5 true
scoreboard players set @s svm_ep.numbers 0
execute unless predicate svm_ep:holding_ability run scoreboard players set @s svm_ep.numbers 1

scoreboard players add @s svm_ep.p.time_ability_05_delay 14

playsound minecraft:block.lever.click master @a[distance=..10] ~ ~ ~ 1 2

execute as @s[scores={svm_ep.using_move=..402}] run scoreboard players set @s svm_ep.numbers 2
execute as @s[scores={svm_ep.numbers=0}] run return 0

scoreboard players set @s svm_ep.p.time_revert 1
scoreboard players set @s[scores={svm_ep.using_move=..490}] svm_ep.p.time_revert 2
scoreboard players set @s[scores={svm_ep.using_move=..480}] svm_ep.p.time_revert 3
scoreboard players set @s[scores={svm_ep.using_move=..470}] svm_ep.p.time_revert 4
scoreboard players set @s[scores={svm_ep.using_move=..460}] svm_ep.p.time_revert 5
scoreboard players set @s[scores={svm_ep.using_move=..450}] svm_ep.p.time_revert 6
scoreboard players set @s[scores={svm_ep.using_move=..440}] svm_ep.p.time_revert 7
scoreboard players set @s[scores={svm_ep.using_move=..430}] svm_ep.p.time_revert 8
execute if score @s svm_ep.p.time_revert > %max_time svm_ep.time run scoreboard players operation @s svm_ep.p.time_revert = %max_time svm_ep.time


#scoreboard players set @s svm_ep.using_move 600
scoreboard players operation @s svm_ep.using_move *= %-1 svm_ep.numbers
scoreboard players add @s svm_ep.using_move 1020
execute at @s run playsound minecraft:block.beacon.power_select master @a[distance=..100] ~ ~ ~ 2 0
execute at @s run effect give @a[distance=..100] minecraft:nausea 10 0 true
playsound minecraft:block.respawn_anchor.deplete master @a[distance=..70] ~ ~ ~ 1 0 1
particle minecraft:end_rod ~ ~ ~ 12 12 12 0.02 500
