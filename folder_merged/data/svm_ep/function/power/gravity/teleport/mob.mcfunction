execute at @s positioned ~ ~.5 ~ run particle minecraft:raid_omen ~ ~ ~ 0 0 0 1.5 5
execute at @s positioned ~ ~.5 ~ run particle minecraft:dust{color:[18000000f,0.4f,0.4f],scale:2f} ~ ~ ~ 0.8 0.3 0.8 0.5 6
execute at @s positioned ~ ~.5 ~ run particle minecraft:gust
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1.2 1
playsound minecraft:block.trial_spawner.break master @a ~ ~ ~ 2 0
playsound minecraft:block.conduit.attack.target master @a ~ ~ ~ 2 2

execute at @n[tag=svm_ep.gravity_field,distance=..5] run tp @s ~ ~ ~
kill @n[tag=svm_ep.gravity_field,distance=..5]
execute at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1.2 2
execute at @s run playsound minecraft:entity.breeze.shoot master @a ~ ~ ~ 1 1.7
effect give @s minecraft:blindness 1 0 true