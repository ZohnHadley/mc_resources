execute as @s[tag=svm_ep.telekinesis_ground_pull_moved] run function svm_ep:power/telekinesis/ground_pull/size/fill_destroy

execute positioned ^ ^ ^2 run tp @s ~ ~ ~

particle minecraft:explosion ~ ~ ~ 2 2 2 0 6 force @a[distance=..125]
playsound minecraft:entity.generic.explode master @a[distance=..125] ~ ~ ~ 0.7 1.1 0.3
particle minecraft:campfire_cosy_smoke ~ ~ ~ 1 1 1 0.4 30 force @a[distance=..125]
particle minecraft:smoke ~ ~ ~ 1 1 1 0.4 50 force @a[distance=..125]


kill @s
