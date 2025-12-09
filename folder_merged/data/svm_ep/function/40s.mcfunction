schedule function svm_ep:40s 40s

title @a times 1t 7t 12t
execute store result score %ITEMS svm_ep.entity_count if entity @e[type=item]
execute store result score %MARKERS svm_ep.entity_count if entity @e[type=marker]
execute store result score %ITEM_DISPLAYS svm_ep.entity_count if entity @e[type=item_display]
execute store result score %PLAYERS svm_ep.entity_count if entity @e[type=player]
execute store result score %TOTAL svm_ep.entity_count if entity @e
execute store result score %TECHNICAL svm_ep.entity_count if entity @e[type=#svm_ep:technical]
execute store result score %NON_TECHNICAL svm_ep.entity_count if entity @e[type=!#svm_ep:technical]


execute unless entity @e[tag=svm_ep.cacti_grenade] run kill @e[tag=svm_ep.cacti_grenade_display]
scoreboard players add @e[tag=svm_ep.paradise_connector,scores={svm_ep.lifetime=..5}] svm_ep.lifetime 1
execute unless score spawnParadiseTraders svm_ep.gamerule matches 0 as @a[predicate=svm_ep:in_paradise,limit=1] if predicate svm_ep:chance/5_percent at @s unless entity @e[tag=svm_ep.npc_paradise_trader,distance=..100] summon minecraft:marker run function svm_ep:npc/spawn/spread {"range":"60","command":"function svm_ep:npc/spawn/paradise_trader"}
tag @e[tag=svm_ep.npc_pemc] add svm_ep.npc_permanent_invisible
kill @e[tag=svm_ep.temp]