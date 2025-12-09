execute at @s run summon marker ~ ~ ~ {Tags:["new","svm_ep.explosion_ray","svm_ep.no_tick"]}
tp @n[tag=new] @s
#execute as @n[tag=new] at @s run tp @s ~ ~ ~ facing entity @n[tag=executor]
#function svm_ep:system/face_opposite_direction

scoreboard players operation @n[tag=new,tag=svm_ep.explosion_ray] svm_ep.lifetime -= @s svm_ep.p.explosion_destroyer_charge
#function svm_ep:system/test/macro/print_score {"score":"svm_ep.lifetime","entity":"@n[tag=new,tag=svm_ep.explosion_ray]"}
tag @n[tag=new] remove new

