tag @s add executor

scoreboard players add @s svm_ep.lifetime 1

execute as @e[tag=svm_ep.explosion_user] if score @s svm_ep.entity_id = @e[tag=executor,limit=1] svm_ep.entity_id run tag @s add same_id


execute at @s run playsound minecraft:entity.generic.extinguish_fire master @a[distance=..30] ~ ~ ~ 0.7 1.6
execute at @s[scores={svm_ep.p.explosion_bullet_charge=740..750}] run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 0.6 1.6
execute at @s[scores={svm_ep.p.explosion_bullet_charge=730..739}] run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 0.7 1.7
execute at @s[scores={svm_ep.p.explosion_bullet_charge=720..729}] run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 0.9 1.8
execute at @s[scores={svm_ep.p.explosion_bullet_charge=710..719}] run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 1.1 1.9
execute at @s[scores={svm_ep.p.explosion_bullet_charge=700..709}] run playsound minecraft:entity.generic.explode master @a[distance=..30] ~ ~ ~ 1.4 2.0

execute as @s[tag=!hit] run function svm_ep:power/explosion/bullet/move
execute as @s[tag=!hit] run function svm_ep:power/explosion/bullet/move
execute as @s[tag=!hit] run function svm_ep:power/explosion/bullet/move
execute as @s[tag=!hit] run function svm_ep:power/explosion/bullet/move
execute as @s[tag=!hit,scores={svm_ep.p.explosion_bullet_charge=5..}] run function svm_ep:power/explosion/bullet/move
execute as @s[tag=!hit,scores={svm_ep.p.explosion_bullet_charge=6..}] run function svm_ep:power/explosion/bullet/move
execute as @s[tag=!hit,scores={svm_ep.p.explosion_bullet_charge=8..}] run function svm_ep:power/explosion/bullet/move
execute as @s[tag=!hit,scores={svm_ep.p.explosion_bullet_charge=10..}] run function svm_ep:power/explosion/bullet/move
execute as @s[tag=!hit,scores={svm_ep.p.explosion_bullet_charge=14..}] run function svm_ep:power/explosion/bullet/move
execute as @s[tag=!hit,scores={svm_ep.p.explosion_bullet_charge=20..}] run function svm_ep:power/explosion/bullet/move
execute as @s[tag=!hit,scores={svm_ep.p.explosion_bullet_charge=28..}] run function svm_ep:power/explosion/bullet/move

execute at @s[scores={svm_ep.p.explosion_bullet_charge=44..70}] run particle minecraft:explosion ~ ~1 ~ 1 1 1 0 4
execute at @s[scores={svm_ep.p.explosion_bullet_charge=71..85}] run particle minecraft:explosion ~ ~1 ~ 0.5 0.5 0.5 0 4
execute at @s[scores={svm_ep.p.explosion_bullet_charge=86..}] run particle minecraft:explosion ~ ~1 ~ 0.25 0.25 0.25 0 4
execute as @s[scores={svm_ep.lifetime=10..}] run tag @s add hit
execute as @s[tag=hit] at @s run function svm_ep:power/explosion/bullet/hit




tag @s remove executor
tag @e remove same_id
kill @s[tag=hit]
