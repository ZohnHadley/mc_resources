effect give @s minecraft:speed infinite 4 true
effect give @s minecraft:jump_boost infinite 2 true
effect give @s minecraft:strength infinite 0 true
#execute on target run tag @s add target
#execute unless entity @e[tag=target] at @s run damage @s 0.001 minecraft:mob_attack by @e[type=!minecraft:slime,limit=1,sort=nearest,tag=!svm_ep.slime_user,type=!#svm_ep:technical]
#tag @e remove target
execute if predicate svm_ep:chance/10_percent run scoreboard players add @s svm_ep.lifetime 1

kill @s[scores={svm_ep.lifetime=25..}]
