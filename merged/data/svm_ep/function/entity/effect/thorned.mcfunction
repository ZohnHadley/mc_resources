scoreboard players set @s svm_ep.effect 1
scoreboard players remove @s svm_ep.e.flora_thorned 1
scoreboard players set @s[scores={svm_ep.e.flora_thorned=100..}] svm_ep.e.flora_thorned 100
damage @s 2 minecraft:sweet_berry_bush
execute at @s run particle minecraft:block_marker{block_state:sweet_berry_bush} ~ ~0.85 ~ 0.3 0.7 0.3 0 1


execute at @s run particle minecraft:dust{color:[1f,0.05f,0.2f],scale:2} ~ ~1 ~ 0.3 0.7 0.3 0 1
execute at @s run particle minecraft:dust{color:[0.7f,0.1f,0.25f],scale:1.3} ~ ~1 ~ 0.3 0.7 0.3 0 1
execute at @s run particle minecraft:dust{color:[0.1f,0.7f,0.4f],scale:1} ~ ~1 ~ 0.3 0.7 0.3 0 2

execute at @s run particle minecraft:crit ~ ~1 ~ 1 1 1 1.85 2


execute as @s[scores={svm_ep.e.flora_thorned=..0}] run function svm_ep:entity/effect/thorned_end