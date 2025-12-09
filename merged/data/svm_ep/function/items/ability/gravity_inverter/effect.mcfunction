
particle dust{color:[18000000f,1f,1f],scale:2.8} ~ ~ ~ 0.3 0.3 0.3 0 3 force @a

particle dust{color:[18000000f,18000000f,0.45f],scale:2.4f} ~ ~ ~ 0.5 0.5 0.5 0 5 force @a

particle minecraft:dust{color:[1f,0.5f,0.1f],scale:1.5f} ~ ~ ~ 1.5 1.5 1.5 0 11 force @a

particle minecraft:dust{color:[1f,0.75f,0.25f],scale:1.7f} ~ ~ ~ 2.25 2.25 2.25 0 12 force @a

particle minecraft:dust{color:[1f,0.85f,0.7f],scale:2.0f} ~ ~ ~ 2.5 2.5 2.5 0 11 force @a

tag @s add executor
execute unless entity @e[tag=svm_ep.gravity_field,distance=..6] as @e[tag=!executor,type=!#svm_ep:technical,distance=..6] run function svm_ep:items/ability/gravity_inverter/in_range
execute unless entity @e[tag=svm_ep.gravity_field,distance=..6] as @s[tag=svm_ep.gravity_user] as @e[tag=!executor,type=!#svm_ep:technical,distance=..6,scores={svm_ep.e.gravity_inverter=1..}] run scoreboard players add @s svm_ep.e.gravity_inverter 15
scoreboard players set @e[tag=svm_ep.gravity_field,distance=..6] svm_ep.p.gravity_field_reverted 1
tag @s remove executor