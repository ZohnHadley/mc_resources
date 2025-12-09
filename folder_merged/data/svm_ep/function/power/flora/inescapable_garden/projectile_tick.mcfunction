tag @s add executor

scoreboard players add @s svm_ep.lifetime 1

execute at @s as @e[tag=svm_ep.flora_user,distance=..60] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id

scoreboard players set @e[tag=same_id] svm_ep.p.flora_inescapable_garden_castor 5
execute unless entity @e[tag=same_id] run damage @s 250 minecraft:dry_out

execute at @s unless entity @e[tag=same_id,distance=..50] run damage @s 100 minecraft:dry_out
execute at @s unless entity @e[tag=same_id,distance=..20] run damage @s 15 minecraft:dry_out
execute at @s unless entity @e[tag=same_id,distance=..30] run damage @s 5 minecraft:dry_out
execute at @s unless entity @e[tag=same_id,distance=..10] run damage @s 3 minecraft:dry_out



tag @s remove executor
tag @e remove same_id

effect give @s minecraft:invisibility infinite 0 true
particle minecraft:dust{color:[0.5f,1f,0.2f],scale:3f} ~ ~5 ~ 1 3 1 0 10 force @a[distance=..150]
particle minecraft:dust{color:[0.4f,0.8f,0.1f],scale:3f} ~ ~3 ~ 2 2 2 0 10 force @a[distance=..150]
particle minecraft:dust{color:[0.35f,0.5f,0.15f],scale:3f} ~ ~ ~ 3 1 3 0 10 force @a[distance=..150]


particle minecraft:dust{color:[18000000f,18000000f,1f],scale:3f} ~ ~5 ~ 0.1 5 0.1 0 10 force @a[distance=..150]
particle minecraft:dust{color:[18000000f,18000000f,0.15f],scale:1.5f} ~ ~5 ~ 0.25 5 0.25 0 10 force @a[distance=..150]

execute at @s as @a[distance=..100] at @s run function svm_ep:power/flora/inescapable_garden/display_particles
#particle minecraft:dust{color:[0.35f,0.2f,0.05f],scale:2f} ~ ~ ~ 100 100 100 0 30 force @a[distance=..150]

execute store result bossbar svm_ep:inescapable_garden value run data get entity @s Health
execute store result score @s svm_ep.numbers run data get entity @s Health

execute as @s[scores={svm_ep.numbers=..1}] at @s run function svm_ep:power/flora/inescapable_garden/end
execute as @s[scores={svm_ep.lifetime=4600..}] at @s run function svm_ep:power/flora/inescapable_garden/end
