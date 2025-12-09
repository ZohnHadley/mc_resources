summon minecraft:marker ~ ~ ~ {Tags:["svm_ep.iceberg_projectile","new"]}
scoreboard players operation @n[tag=new] svm_ep.entity_id = @s svm_ep.entity_id
scoreboard players operation @n[tag=new] svm_ep.lifetime -= @s svm_ep.p.iceberg_charged
scoreboard players operation @n[tag=new] svm_ep.p.iceberg_charged = @s svm_ep.p.iceberg_charged

$execute rotated as @s as @n[tag=new,distance=..5] run tp @s ~ ~ ~ $(rot)
tag @n[tag=new] remove new
