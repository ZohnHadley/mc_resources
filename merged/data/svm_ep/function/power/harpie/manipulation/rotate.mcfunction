tp @s ^ ^ ^0.43 facing entity @n[tag=rotator]


scoreboard players set @s svm_ep.lifetime 5
tag @s add svm_ep.active

scoreboard players add @n[tag=executor] svm_ep.mana_drain 12
particle minecraft:small_gust ~ ~ ~ 1 1 1 0 5
playsound minecraft:entity.breeze.deflect master @a[distance=..44] ~ ~ ~ 0.36 0.7


#tellraw @a {"score":{"name":"@s","objective":"svm_ep.numbers"}}

#scoreboard players set @s svm_ep.p.gravity_field_color 2


#tellraw @a {"score":{"name":"@n[tag=executor]","objective":"svm_ep.mana_drain"}}
