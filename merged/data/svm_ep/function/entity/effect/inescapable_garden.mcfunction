scoreboard players set @s svm_ep.effect 1
scoreboard players reset @s svm_ep.deal_damage
execute unless entity @e[tag=svm_ep.inescapable_garden] run scoreboard players set @s svm_ep.e.inescapable_garden 0
execute at @s unless entity @e[tag=svm_ep.inescapable_garden,distance=..50] run scoreboard players add @s svm_ep.deal_damage 2
execute at @s unless entity @e[tag=svm_ep.inescapable_garden,distance=..55] run scoreboard players add @s svm_ep.deal_damage 4
execute at @s unless entity @e[tag=svm_ep.inescapable_garden,distance=..60] run scoreboard players add @s svm_ep.deal_damage 6
execute at @s unless entity @e[tag=svm_ep.inescapable_garden,distance=..65] run scoreboard players add @s svm_ep.deal_damage 8
execute at @s unless entity @e[tag=svm_ep.inescapable_garden,distance=..70] run scoreboard players add @s svm_ep.deal_damage 10

execute as @s[scores={svm_ep.deal_damage=1..}] at @s run particle minecraft:crit ~ ~0.6 ~ 1 1 1 2.7 10
execute as @s[scores={svm_ep.deal_damage=1..}] at @s run playsound minecraft:block.sweet_berry_bush.break ambient @a[distance=..25] ~ ~ ~ 1 0
execute as @s[scores={svm_ep.deal_damage=1..}] if entity @e[tag=svm_ep.inescapable_garden] run function svm_ep:damage/deal_normal {"damage":"0","attacker":"@n[tag=svm_ep.inescapable_garden]","type":"sweet_berry_bush"}

scoreboard players reset @s svm_ep.deal_damage

execute as @s[scores={svm_ep.e.inescapable_garden=0}] run function svm_ep:entity/effect/inescapable_garden_end