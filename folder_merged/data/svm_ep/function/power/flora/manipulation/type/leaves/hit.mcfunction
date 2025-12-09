scoreboard players remove @s svm_ep.p.flora_manipulation_leaves_speed 2
scoreboard players remove @s svm_ep.p.flora_manipulation_leaves_knock 2
execute as @s[scores={svm_ep.p.flora_manipulation_type=1}] at @s if predicate svm_ep:chance/67_percent as @e[type=!#svm_technical,tag=!svm_ep.flora_user,distance=..6,limit=1,sort=random] run damage @s 3 svm_ep:no_cooldown_projectile by @n[tag=svm_ep.flora_manipulation.leaves]
execute at @s run tp @s ^ ^ ^-0.25
summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/water_droplet/2":1}}}}}
execute as @s[scores={svm_ep.p.flora_manipulation_leaves_knock=10..}] run summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/water_droplet/2":1}}}}}
execute as @s[scores={svm_ep.p.flora_manipulation_leaves_knock=20..}] run summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/water_droplet/2":1}}}}}
