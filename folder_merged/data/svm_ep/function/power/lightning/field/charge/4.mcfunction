execute at @s as @e[tag=!same_id,tag=!svm_ep.permament_redirected,tag=svm_ep.can_redirect,distance=..8.5,tag=!svm_ep.lightning_ray] at @s run function svm_ep:power/lightning/field/projectile
execute positioned ~ ~1 ~ if predicate svm_ep:chance/33_percent run function svm_ep:power/lightning/field/ray/shoot
execute positioned ~ ~1 ~ run particle minecraft:electric_spark ~ ~ ~ 0 0 0 4 3
particle minecraft:dust{color:[0.7f,18000000f,18000000f],scale:1.6f} ~ ~1 ~ 2.5 3 2.5 0 8
particle minecraft:dust{color:[0.2f,1f,1f],scale:1.4f} ~ ~1 ~ 2.5 3.5 2.5 0 16
particle minecraft:dust{color:[18000000f,0.87f,0f],scale:1.35f} ~ ~1 ~ 2.65 3.1 2.65 0 16

playsound minecraft:entity.guardian.attack master @a[distance=..20] ~ ~ ~ 0.9 1
particle minecraft:glow ~ ~1 ~ 2 2 2 0.5 25
tag @s add executor

execute at @s as @e[tag=!executor,type=!#svm_ep:technical,distance=..8] if predicate svm_ep:chance/33_percent at @s run function svm_ep:power/lightning/field/hitby

tag @s remove executor