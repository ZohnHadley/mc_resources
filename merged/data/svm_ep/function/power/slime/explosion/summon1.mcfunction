tag @s add svm_ep.slime_explosion
scoreboard players operation @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id
scoreboard players set @s svm_ep.projectile 1
particle minecraft:explosion ~ ~ ~ 1 1 1 0 4
particle minecraft:item{item:slime_ball} ~ ~0.5 ~ 0 0 0 0.7 300

playsound minecraft:entity.slime.death master @a[distance=..30] ~ ~0.5 ~ 2 0
playsound minecraft:entity.slime.attack master @a[distance=..30] ~ ~0.5 ~ 3 0
playsound minecraft:entity.generic.explode master @a[distance=..20] ~ ~ ~ 0.8 1.2
