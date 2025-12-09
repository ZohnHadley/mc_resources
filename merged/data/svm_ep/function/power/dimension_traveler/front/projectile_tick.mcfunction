scoreboard players add @s svm_ep.lifetime 1
tag @s add executor


#tellraw @a ["",{"text":"| ","color":"gray"},{"score":{"name":"@s","objective":"svm_ep.lifetime"},"color":"gray"}]
execute as @s[scores={svm_ep.lifetime=..499}] as @e[dx=3,type=!#svm_ep:technical] run tag @s add tp
execute as @s[scores={svm_ep.lifetime=..499}] as @e[distance=..1.75,type=!#svm_ep:technical] run tag @s add tp

execute at @s run tp @s @e[tag=same_id,limit=1]
execute at @s run tp @s ~ ~ ~ ~12.5 0
execute at @s run tp @s[scores={svm_ep.lifetime=..20}] ~ ~ ~ ~2.25 0
execute at @s run tp @s[scores={svm_ep.lifetime=..60}] ~ ~ ~ ~2.25 0
execute at @s run tp @s[scores={svm_ep.lifetime=..100}] ~ ~ ~ ~2.25 0
execute at @s run tp @s[scores={svm_ep.lifetime=..120}] ~ ~ ~ ~2.25 0
execute at @s run tp @s[scores={svm_ep.lifetime=..140}] ~ ~ ~ ~2.25 0

execute at @s run tp @s[scores={svm_ep.lifetime=360..}] ~ ~ ~ ~2.25 0
execute at @s run tp @s[scores={svm_ep.lifetime=380..}] ~ ~ ~ ~2.25 0
execute at @s run tp @s[scores={svm_ep.lifetime=400..}] ~ ~ ~ ~2.25 0
execute at @s run tp @s[scores={svm_ep.lifetime=420..}] ~ ~ ~ ~2.25 0
execute at @s run tp @s[scores={svm_ep.lifetime=440..}] ~ ~ ~ ~2.25 0
execute at @s run tp @s[scores={svm_ep.lifetime=460..}] ~ ~ ~ ~2.25 0
execute at @s run tp @s[scores={svm_ep.lifetime=480..}] ~ ~ ~ ~2.25 0

execute at @s positioned ^ ^ ^1.6 run function svm_ep:power/dimension_traveler/front/particle1
execute at @s run particle minecraft:dust{color:[0f,0f,0.025f],scale:2.5f} ~ ~ ~ 0.4 0 0.4 0 5
execute at @s run particle minecraft:dust{color:[0.175f,0.175f,0.275f],scale:2.5f} ~ ~ ~ 0.6 0 0.6 0 4
execute at @s run particle minecraft:dust{color:[0.325f,0.325f,0.425f],scale:2f} ~ ~ ~ 0.8 0 0.8 0 4



execute at @s if entity @e[tag=svm_ep.dimension_front_display,distance=0.5..150] as @e[tag=tp] unless entity @s[scores={svm_ep.p.dimension_front_delay=1..}] run function svm_ep:power/dimension_traveler/front/tp

#execute as @e[tag=same_id] run say 1
execute at @s[scores={svm_ep.lifetime=499}] run particle minecraft:end_rod ~ ~ ~ 0 0 0 2.5 300
execute at @s[scores={svm_ep.lifetime=499}] run particle minecraft:flash{color:0xffffffff} ~ ~ ~
execute at @s[scores={svm_ep.lifetime=499}] run playsound minecraft:item.trident.return master @a[distance=..50] ~ ~ ~ 1 1.4
execute at @s[scores={svm_ep.lifetime=499}] run playsound minecraft:entity.wither.hurt master @a[distance=..35] ~ ~ ~ 1 0

tag @s remove executor
tag @e remove tp
kill @s[scores={svm_ep.lifetime=499..}]