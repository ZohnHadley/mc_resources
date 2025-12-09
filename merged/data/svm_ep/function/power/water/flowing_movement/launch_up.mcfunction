#execute store result score @s rot.y run data get entity @s Rotation[1]
#execute as @s[scores={rot.y=45..}] run return 0
execute if predicate [{condition:"minecraft:weather_check",raining:1b},{condition:"minecraft:location_check",predicate:{can_see_sky:1b}}] run return run function svm_ep:power/water/flowing_movement/launch_rain
execute unless block ~ ~-0.35 ~ water unless block ~ ~-0.1 ~ water unless block ~ ~ ~ water run return 0

particle minecraft:dust{color:[0.4f,0.8f,1f],scale:1.5f} ~ ~0.2 ~ 0.3 0 0.3 0 2
particle minecraft:dust{color:[0.25f,0.5f,0.95f],scale:1.25f} ~ ~0.2 ~ 0.35 0.05 0.35 0 3
particle minecraft:dust{color:[0.2f,0.4f,0.9f],scale:1f} ~ ~0.2 ~ 0.4 0.1 0.4 0 3


particle minecraft:bubble_pop ~ ~ ~ 0.35 0.05 0.35 0.05 15
particle minecraft:bubble_pop ~ ~ ~ 0 0 0 0.35 8
playsound minecraft:item.bucket.empty master @a[distance=..25] ~ ~ ~ 0.25 1.25
summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/flowing_movement":1}}}}}
execute if block ~ ~0.25 ~ water run summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/flowing_movement":1}}}}}
execute if block ~ ~0.5 ~ water run summon armor_stand ~ ~ ~ {Invisible:1b,equipment:{feet:{id:brick,components:{"minecraft:enchantments":{"svm_ep:technical/flowing_movement":1}}}}}
