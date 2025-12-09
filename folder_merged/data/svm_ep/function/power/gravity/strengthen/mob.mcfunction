scoreboard players set @s svm_ep.effect 1
scoreboard players add @s svm_ep.e.gravity_strengthen 80

attribute @s minecraft:gravity modifier add svm_ep.e.gravity_strengthen 2.5 add_multiplied_base
attribute @s minecraft:fall_damage_multiplier modifier add svm_ep.e.gravity_strengthen 2.5 add_multiplied_base
execute at @s positioned ~ ~.5 ~ run particle minecraft:raid_omen ~ ~ ~ 0 0 0 1.5 10
execute at @s positioned ~ ~.5 ~ run particle minecraft:dust{color:[18000000f,0.4f,0.4f],scale:2f} ~ ~ ~ 0.8 0.3 0.8 0.5 10
execute at @s positioned ~ ~.15 ~ run particle minecraft:dust{color:[18000000f,0.4f,0.4f],scale:2f} ~ ~ ~ 1.4 0.1 1.4 0.5 20
execute at @s positioned ~ ~.5 ~ run particle minecraft:gust
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1.2 2
scoreboard players add @a[distance=..5] svm_ep.shaking 8
playsound minecraft:block.trial_spawner.break master @a ~ ~ ~ 2 0
playsound minecraft:block.conduit.attack.target master @a ~ ~ ~ 2 2