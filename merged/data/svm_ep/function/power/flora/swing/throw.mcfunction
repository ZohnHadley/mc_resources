execute at @s run summon armor_stand ~ ~ ~ {Tags:["new1","svm_ep.flora_vine_swing"],ShowArms:1b,Invisible:1b,NoBasePlate:1b,Small:1b,Invulnerable:1b,Silent:1b}
execute as @s[tag=same_id] as @e[tag=new1] at @s run function svm_ep:power/flora/swing/motion
execute as @s[tag=!same_id] as @e[tag=new1] at @s run function svm_ep:power/flora/swing/motion2
scoreboard players set @n[tag=new1] svm_ep.projectile 10
scoreboard players set @n[tag=new1] svm_ep.projectile_type 1


ride @s dismount
ride @s mount @e[tag=new1,limit=1]
kill @e[tag=executor]
execute at @s run playsound minecraft:entity.leash_knot.place master @a[distance=..30] ~ ~ ~ 1 0


tag @e remove new1

