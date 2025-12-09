execute at @s run playsound minecraft:block.vine.place master @a[distance=..30] ~ ~ ~ 2 0
execute at @s anchored eyes run summon marker ~ ~ ~ {Tags:["new","svm_ep.flora_vine"]}
scoreboard players operation @n[tag=new] svm_ep.entity_id = @s svm_ep.entity_id
scoreboard players set @n[tag=new] svm_ep.projectile 10
scoreboard players set @n[tag=new] svm_ep.projectile_type 1
tp @n[tag=new] @s
execute at @s anchored eyes positioned ^ ^ ^0.6 run tp @e[tag=new] ~ ~ ~

#scoreboard players remove @s svm_ep.mana 10



item modify entity @s[tag=!svm_ep.flora_user,tag=main,nbt={SelectedItem:{tag:{Damage:100}}}] weapon svm_ep:consume
execute if items entity @s weapon.offhand *[minecraft:damage=100] run item modify entity @s[tag=!svm_ep.flora_user,tag=!main] weapon.offhand svm_ep:consume

execute at @s run tag @e[distance=..5] remove new