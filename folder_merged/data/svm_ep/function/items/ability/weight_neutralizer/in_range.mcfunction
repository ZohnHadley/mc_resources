scoreboard players set @s svm_ep.effect 1
scoreboard players add @s svm_ep.e.weight_neutralizer 100


execute at @s positioned ~ ~.5 ~ run particle minecraft:trial_omen ~ ~ ~ 1 1 1 1.5 10
execute at @s positioned ~ ~.5 ~ run particle minecraft:dust{color:[0.8f,0.8f,18000000f],scale:2f} ~ ~ ~ 0.8 0.3 0.8 0.5 10
execute at @s positioned ~ ~.15 ~ run particle minecraft:dust{color:[0.4f,0.4f,18000000f],scale:2f} ~ ~ ~ 1.4 0.1 1.4 0.5 20
execute at @s positioned ~ ~.5 ~ run particle minecraft:gust
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1.2 0.5
playsound minecraft:block.trial_spawner.break master @a ~ ~ ~ 1 2
playsound minecraft:block.conduit.attack.target master @a ~ ~ ~ 1 1