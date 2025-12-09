tag @s add executor
scoreboard players set @s svm_ep.numbers -1
scoreboard players set @s[scores={svm_ep.using_move=..890}] svm_ep.numbers -2
scoreboard players set @s[scores={svm_ep.using_move=..880}] svm_ep.numbers -3
scoreboard players reset @s svm_ep.using_move

execute at @s[scores={svm_ep.numbers=-1}] anchored eyes positioned ^ ^ ^ rotated ~ 0 run function svm_ep:power/copy/fangs_of_the_mansion/pattern/straight
execute at @s[scores={svm_ep.numbers=-2}] run function svm_ep:power/copy/fangs_of_the_mansion/pattern/around
execute at @s[scores={svm_ep.numbers=-3}] run function svm_ep:power/copy/fangs_of_the_mansion/pattern/aoe

tag @s remove executor
effect clear @s minecraft:slowness
#execute summon minecraft:evoker_fangs run function svm_ep:power/copy/fangs_of_the_mansion/setup