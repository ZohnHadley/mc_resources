tag @s add executor

gamemode survival @s[scores={svm_ep.using_move=401}]
gamemode spectator @s[scores={svm_ep.using_move=402}]
gamemode survival @s[scores={svm_ep.using_move=403}]
gamemode spectator @s[scores={svm_ep.using_move=404}]
gamemode survival @s[scores={svm_ep.using_move=405}]
gamemode spectator @s[scores={svm_ep.using_move=406}]
effect clear @s minecraft:darkness

execute at @s run particle minecraft:flash{color:0xffffffff} ~ ~0.8 ~ 0.63 0.63 0.63 0 4

execute at @s anchored feet run tp @s ^ ^ ^0.13
execute at @s anchored feet run tp @s[scores={svm_ep.p.phase_awakening_lenght=1..}] ^ ^ ^0.27


tag @s remove executor
