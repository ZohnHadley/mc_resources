rotate @s facing ~ ~ ~
execute at @s run tp @s ^ ^ ^0.25

scoreboard players remove @s svm_ep.lifetime 1
tag @s add svm_ep.active

scoreboard players add @n[tag=executor] svm_ep.mana_drain 8
execute at @s run particle minecraft:splash ~ ~ ~ 1 1 1 0 5
execute at @s run playsound minecraft:entity.player.splash master @a[distance=..35] ~ ~ ~ 0.15 2 0.1

#tellraw @a {"score":{"name":"@s","objective":"svm_ep.numbers"}}

#scoreboard players set @s svm_ep.p.gravity_field_color 2


#tellraw @a {"score":{"name":"@n[tag=executor]","objective":"svm_ep.mana_drain"}}
