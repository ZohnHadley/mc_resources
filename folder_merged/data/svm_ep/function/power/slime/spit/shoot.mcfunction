execute at @s anchored eyes run summon marker ~ ~ ~ {Tags:["new","svm_ep.slime_spit"]}
scoreboard players operation @e[tag=new] svm_ep.entity_id = @s svm_ep.entity_id
scoreboard players set @n[tag=new] svm_ep.projectile 1
scoreboard players set @n[tag=new] svm_ep.projectile_type 1
tp @e[tag=new] @s
execute on target at @e[tag=new] run tp @e[tag=new] ~ ~ ~ facing entity @s eyes
execute at @s anchored eyes positioned ^ ^ ^0.6 run tp @e[tag=new] ~ ~ ~

execute at @s run playsound minecraft:entity.llama.spit master @a[distance=..30] ~ ~ ~ 1.2 1.06
execute at @s run playsound minecraft:entity.slime.attack master @a[distance=..25] ~ ~ ~ 1 0.8
execute at @s run playsound minecraft:entity.slime.jump master @a[distance=..20] ~ ~1 ~ 0.6 1.5
execute at @s anchored eyes positioned ^ ^ ^0.6 run particle minecraft:item{item:slime_ball} ~ ~0.5 ~ 0 0 0 0.6 100
scoreboard players reset @s svm_ep.using_move
tag @e remove new