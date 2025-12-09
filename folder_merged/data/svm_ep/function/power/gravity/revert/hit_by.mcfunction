execute as @s[scores={svm_ep.e.gravity_inverter=1..}] run tag @s add revert
scoreboard players set @s svm_ep.effect 1
scoreboard players add @s svm_ep.e.gravity_inverter 15

attribute @s minecraft:gravity modifier add svm_ep.e.gravity_inverter -2 add_multiplied_total


execute as @s[tag=revert] run function svm_ep:entity/effect/gravity_inverter_end

execute at @s positioned ~ ~.5 ~ run particle minecraft:flame ~ ~ ~ 1 1 1 1.5 10
execute at @s positioned ~ ~.5 ~ run particle minecraft:dust{color:[18000000f,18000000f,0.8f],scale:2f} ~ ~ ~ 0.8 0.3 0.8 0.5 10
execute at @s positioned ~ ~.15 ~ run particle minecraft:dust{color:[18000000f,18000000f,0.4f],scale:2f} ~ ~ ~ 1.4 0.1 1.4 0.5 20
execute at @s positioned ~ ~.5 ~ run particle minecraft:gust
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1.2 0.5
playsound minecraft:block.trial_spawner.break master @a ~ ~ ~ 1 2
playsound minecraft:block.conduit.attack.target master @a ~ ~ ~ 1 1

scoreboard players add @s[tag=revert] svm_ep.effect 1
scoreboard players reset @s[tag=revert] svm_ep.e.gravity_inverter
tag @s remove revert