execute at @s anchored eyes run summon item_display ~ ~ ~ {Tags:["new","svm_ep.razor_feather","svm_ep.active"]}
scoreboard players operation @e[tag=new] svm_ep.entity_id = @s svm_ep.entity_id
scoreboard players set @e[tag=new] svm_ep.projectile 1
tp @e[tag=new] @s
item replace entity @e[tag=new,distance=..5] container.0 with minecraft:feather
execute as @e[tag=new,distance=..5] run data merge entity @s {teleport_duration:1}
scoreboard players remove @s[scores={svm_ep.using_move=..97}] svm_ep.mana 5
execute on target at @e[tag=new] run tp @e[tag=new] ~ ~ ~ facing entity @s eyes
execute at @s anchored eyes positioned ^ ^ ^0.6 run tp @e[tag=new] ~ ~ ~

execute at @s run playsound minecraft:entity.llama.spit master @a[distance=..30] ~ ~ ~ 0.2 1.06
execute at @s run playsound minecraft:entity.player.attack.knockback master @a[distance=..20] ~ ~ ~ 1 2
execute at @s anchored eyes positioned ^ ^ ^0.6 run particle minecraft:item{item:feather} ~ ~0.5 ~ 0 0 0 0.6 30
tag @e remove new