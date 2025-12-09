

tag @s add executor

execute on target run tag @s add target
execute on attacker run tag @s add attacker

execute if entity @e[tag=target,distance=..35] run function svm_ep:npc/graster/attack

function svm_ep:mana/tick

effect give @s minecraft:resistance infinite 0 true

scoreboard players add @s svm_ep.mana 1



#execute at @s run bossbar set minecraft:lightning_god players @a[distance=..50]


function svm_ep:system/get_fall

effect give @s[scores={falldistance=16..}] minecraft:resistance 1 3 true
effect give @s[scores={falldistance=26..}] minecraft:resistance 1 5 true
effect give @s[scores={falldistance=36..}] minecraft:resistance 1 7 true


#execute if score @s svm_ep.using_move matches 1.. at @s run tp @s ~ ~ ~ facing entity @e[tag=target,limit=1,sort=nearest] eyes
tag @s remove executor
tag @e remove target
tag @e remove attacker