scoreboard players remove @s svm_ep.p.slime_rain_count 1
execute at @s run function svm_ep:power/slime/rain/summon0
scoreboard players add @s svm_ep.using_move 1
effect give @s minecraft:slowness 1 4 true
effect clear @s[scores={svm_ep.p.slime_rain_count=..0}] minecraft:slowness
scoreboard players reset @s[scores={svm_ep.p.slime_rain_count=..0}] svm_ep.using_move
