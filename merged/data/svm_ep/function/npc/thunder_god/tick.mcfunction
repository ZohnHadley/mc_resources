

tag @s add executor

execute on target run tag @s add target
execute on attacker run tag @s add attacker

execute unless entity @e[tag=attacker] if entity @e[tag=target,distance=7..] unless entity @s[scores={svm_ep.p.lightning_ability_09_delay=1..}] run function svm_ep:power/lightning/ability/use/12
execute unless entity @e[tag=attacker,distance=..2.4] if entity @e[tag=target,distance=..35] run function svm_ep:npc/thunder_god/attack
execute if entity @e[tag=attacker,distance=..2.4] if predicate svm_ep:chance/10_percent at @s run function svm_ep:npc/thunder_god/attack

function svm_ep:system/get_motion
execute unless entity @s[scores={motion.x=0,motion.z=0}] run scoreboard players add @s svm_ep.walking_frame 1
execute if entity @s[scores={motion.x=0,motion.z=0}] run scoreboard players set @s svm_ep.walking_frame 0
#execute at @s if entity @e[tag=target,distance=..3,tag=!svm_ep.phase_user] unless entity @s[scores={svm_ep.using_move=1..}] unless entity @s[scores={svm_ep.p.phase_delay_02=1..}] run function svm_ep:power/phase/ability2

effect give @s minecraft:speed infinite 1 true
effect give @s minecraft:resistance infinite 0 true
effect give @s minecraft:invisibility infinite 0 true
effect give @s minecraft:weakness infinite 100 true




#execute at @s run bossbar set minecraft:lightning_god players @a[distance=..50]
function svm_ep:system/get_hp
execute store result bossbar minecraft:lightning_god value run data get entity @s Health 1
execute store result bossbar minecraft:lightning_god max run attribute @s minecraft:max_health get 1
bossbar set minecraft:lightning_god players @a[distance=..60]

execute as @s[scores={health=..250},tag=!svm_ep.awakened] run function svm_ep:power/lightning/ability/use/11


execute if predicate svm_ep:chance/10_percent at @s run particle minecraft:electric_spark ~ ~0.8 ~ 0.4 0.8 0.4 0.3 1
execute if predicate svm_ep:chance/25_percent at @s[tag=svm_ep.awakened] run particle minecraft:electric_spark ~ ~0.8 ~ 0.4 0.8 0.4 0.3 1
execute at @s run particle minecraft:dust{color:[0.3f,18000000f,0.9f],scale:1.2f} ~ ~0.8 ~ 0.4 0.6 0.4 0.3 2
execute at @s[tag=svm_ep.awakened] run particle minecraft:dust{color:[18000000f,18000000f,0f],scale:0.4f} ~ ~0.8 ~ 0.4 0.6 0.4 0.3 3


execute if entity @s[scores={svm_ep.walking_frame=0}] at @s on passengers run item replace entity @s armor.head with minecraft:warped_fungus_on_a_stick[item_model="svm_ep:thunder_god/pose"]
execute if entity @s[scores={svm_ep.walking_frame=1}] at @s on passengers run item replace entity @s armor.head with minecraft:warped_fungus_on_a_stick[item_model="svm_ep:thunder_god/walk_1"]
execute if entity @s[scores={svm_ep.walking_frame=4}] at @s on passengers run item replace entity @s armor.head with minecraft:warped_fungus_on_a_stick[item_model="svm_ep:thunder_god/walk_2"]
execute if entity @s[scores={svm_ep.walking_frame=6}] at @s on passengers run item replace entity @s armor.head with minecraft:warped_fungus_on_a_stick[item_model="svm_ep:thunder_god/walk_3"]
execute if entity @s[scores={svm_ep.walking_frame=8}] at @s on passengers run item replace entity @s armor.head with minecraft:warped_fungus_on_a_stick[item_model="svm_ep:thunder_god/walk_2"]

execute if entity @s[scores={svm_ep.walking_frame=0},tag=svm_ep.awakened] at @s on passengers run item replace entity @s armor.head with minecraft:warped_fungus_on_a_stick[item_model="svm_ep:thunder_god/pose2"]
execute if entity @s[scores={svm_ep.walking_frame=1},tag=svm_ep.awakened] at @s on passengers run item replace entity @s armor.head with minecraft:warped_fungus_on_a_stick[item_model="svm_ep:thunder_god/walk_4"]
execute if entity @s[scores={svm_ep.walking_frame=4},tag=svm_ep.awakened] at @s on passengers run item replace entity @s armor.head with minecraft:warped_fungus_on_a_stick[item_model="svm_ep:thunder_god/walk_5"]
execute if entity @s[scores={svm_ep.walking_frame=6},tag=svm_ep.awakened] at @s on passengers run item replace entity @s armor.head with minecraft:warped_fungus_on_a_stick[item_model="svm_ep:thunder_god/walk_6"]
execute if entity @s[scores={svm_ep.walking_frame=8},tag=svm_ep.awakened] at @s on passengers run item replace entity @s armor.head with minecraft:warped_fungus_on_a_stick[item_model="svm_ep:thunder_god/walk_5"]

execute if entity @s[scores={svm_ep.walking_frame=10}] at @s run scoreboard players set @s svm_ep.walking_frame 0

function svm_ep:system/get_fall
execute as @s[scores={falldistance=6..}] at @s on passengers run item replace entity @s armor.head with minecraft:warped_fungus_on_a_stick[item_model="svm_ep:thunder_god/falling"]
execute as @s[scores={falldistance=6..},tag=svm_ep.awakened] at @s on passengers run item replace entity @s armor.head with minecraft:warped_fungus_on_a_stick[item_model="svm_ep:thunder_god/falling2"]

effect give @s[scores={falldistance=16..}] minecraft:resistance 1 3 true
effect give @s[scores={falldistance=26..}] minecraft:resistance 1 5 true
effect give @s[scores={falldistance=36..}] minecraft:resistance 1 7 true

#execute if score @s svm_ep.using_move matches 1.. at @s run tp @s ~ ~ ~ facing entity @e[tag=target,limit=1,sort=nearest] eyes
tag @s remove executor
tag @e remove target
tag @e remove attacker