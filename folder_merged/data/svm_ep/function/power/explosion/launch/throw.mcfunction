tag @s add executor
tag @s remove same_id
execute at @s anchored eyes positioned ^ ^-0.15 ^-0.35 run function svm_ep:power/explosion/effect

execute at @s run summon armor_stand ~ ~ ~ {Tags:["new1","svm_ep.explosion_launch"],ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Silent:1b}
tp @e[tag=new1] @s
scoreboard players operation @e[tag=new1] svm_ep.p.explosion_launch_charge = @s svm_ep.p.explosion_launch_charge

#execute as @e[tag=new1] run tellraw @a ["",{"score":{"name":"@s","objective":"svm_ep.p.explosion_launch_charge"}},{"text":" LOL "},{"score":{"name":"LordGacie","objective":"svm_ep.p.explosion_launch_charge"}}]
ride @s dismount
ride @s mount @e[tag=new1,limit=1]
scoreboard players set @e[tag=new1] svm_ep.projectile 5

execute as @e[tag=same_id] run kill @s
scoreboard players reset @s svm_ep.p.explosion_launch_charge
scoreboard players set @s svm_ep.p.explosion_ability_04_delay 20
scoreboard players reset @s svm_ep.using_move
tag @e remove new1
tag @e remove same_id
tag @s remove executor
