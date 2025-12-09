tag @s add svm_ep.tornado
scoreboard players set @s svm_ep.projectile 5
#item replace entity @s container.0 from entity @e[tag=executor,limit=1] weapon.mainhand
data merge entity @s {item_display:"head",CustomName:{"text":"tornado"},teleport_duration:1}
summon marker ~ ~ ~ {Tags:["svm_ep.tornado","svm_ep.tornado_display"]}
scoreboard players set @e[tag=svm_ep.tornado_display,distance=..5] svm_ep.projectile 7
data modify entity @s Rotation set from entity @e[tag=executor,limit=1] Rotation