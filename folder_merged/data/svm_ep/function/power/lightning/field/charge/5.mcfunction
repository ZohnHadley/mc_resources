execute at @s as @e[tag=!same_id,tag=!svm_ep.permament_redirected,tag=svm_ep.can_redirect,distance=..10,tag=!svm_ep.lightning_ray] at @s run function svm_ep:power/lightning/field/projectile
execute positioned ~ ~1 ~ if predicate svm_ep:chance/50_percent run function svm_ep:power/lightning/field/ray/shoot
execute positioned ~ ~1 ~ run particle minecraft:electric_spark ~ ~ ~ 0 0 0 4 3
particle minecraft:dust{color:[0.7f,18000000f,18000000f],scale:1.6f} ~ ~1 ~ 3.5 4.8 3.5 0 15
particle minecraft:dust{color:[0.2f,1f,1f],scale:1.4f} ~ ~1 ~ 3.5 4.5 3.5 0 24
particle minecraft:dust{color:[18000000f,0.87f,0f],scale:1.35f} ~ ~1 ~ 3.85 4.5 3.85 0 24

playsound minecraft:entity.guardian.attack master @a[distance=..20] ~ ~ ~ 1 2
particle minecraft:glow ~ ~1 ~ 2 2 2 0.5 35
tag @s add executor

execute at @s as @e[tag=!executor,type=!#svm_ep:technical,distance=..10] if predicate svm_ep:chance/33_percent at @s run function svm_ep:power/lightning/field/hitby

tag @s remove executor