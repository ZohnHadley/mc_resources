function svm_ep:system/new_entity
execute as @s[tag=svm_ep.fire_user] if predicate svm_ep:chance/25_percent run scoreboard players set @s svm_ep.ability0 5
execute as @s[tag=svm_ep.fire_user] if predicate svm_ep:chance/25_percent run scoreboard players set @s svm_ep.ability1 5
execute as @s[tag=svm_ep.fire_user] if predicate svm_ep:chance/25_percent run scoreboard players set @s svm_ep.ability2 5

execute as @s[tag=svm_ep.harpie_user] run scoreboard players set @s svm_ep.ability0 1


execute as @s[tag=svm_ep.lighting_user] if predicate svm_ep:chance/25_percent run scoreboard players set @s svm_ep.ability0 2
execute as @s[tag=svm_ep.lighting_user] if predicate svm_ep:chance/50_percent run scoreboard players set @s svm_ep.ability1 16
execute as @s[tag=svm_ep.lighting_user] if predicate svm_ep:chance/50_percent run scoreboard players set @s svm_ep.ability0 17

execute as @s[tag=svm_ep.flora_user] run scoreboard players set @s svm_ep.ability2 2
execute as @s[tag=svm_ep.flora_user] if predicate svm_ep:chance/50_percent run scoreboard players set @s svm_ep.ability0 7
execute as @s[tag=svm_ep.flora_user] if predicate svm_ep:chance/50_percent run scoreboard players set @s svm_ep.ability1 6
execute as @s[tag=svm_ep.flora_user] if predicate svm_ep:chance/50_percent run scoreboard players set @s svm_ep.ability1 28
execute as @s[tag=svm_ep.flora_user] if predicate svm_ep:chance/50_percent run scoreboard players set @s svm_ep.ability0 28
execute as @s[tag=svm_ep.flora_user] if predicate svm_ep:chance/50_percent run scoreboard players set @s svm_ep.ability1 29
execute as @s[tag=svm_ep.flora_user] if predicate svm_ep:chance/50_percent run scoreboard players set @s svm_ep.ability0 29
execute as @s[tag=svm_ep.flora_user] if predicate svm_ep:chance/50_percent run scoreboard players set @s svm_ep.ability1 18
execute as @s[tag=svm_ep.flora_user] if predicate svm_ep:chance/50_percent run scoreboard players set @s svm_ep.ability0 18
execute as @s[tag=svm_ep.flora_user] if predicate svm_ep:chance/50_percent run scoreboard players set @s svm_ep.ability1 23
execute as @s[tag=svm_ep.flora_user] if predicate svm_ep:chance/50_percent run scoreboard players set @s svm_ep.ability0 23
execute if predicate svm_ep:chance/33_percent store result score @s svm_ep.ability0 run random value 1..32
execute if predicate svm_ep:chance/33_percent store result score @s svm_ep.ability1 run random value 1..32
execute if predicate svm_ep:chance/33_percent store result score @s svm_ep.ability2 run random value 1..32
execute as @s[tag=svm_ep.gravity_user] if predicate svm_ep:chance/50_percent run scoreboard players set @s svm_ep.ability2 5


execute as @s[tag=svm_ep.dimension_traveler_user] run scoreboard players set @s svm_ep.ability0 1
execute as @s[tag=svm_ep.dimension_traveler_user] run scoreboard players set @s svm_ep.ability1 4
execute as @s[tag=svm_ep.dimension_traveler_user] run scoreboard players set @s svm_ep.ability2 1
execute as @s[tag=svm_ep.dimension_traveler_user] if predicate svm_ep:chance/30_percent run scoreboard players set @s svm_ep.ability1 2
execute as @s[tag=svm_ep.dimension_traveler_user] if predicate svm_ep:chance/30_percent run scoreboard players set @s svm_ep.ability2 5
