tag @s remove hitby
effect give @s minecraft:weakness 2 3 true
effect give @s minecraft:slowness 2 3 true
scoreboard players operation @s svm_ep.deal_damage = %damage svm_ep.numbers
execute at @s run function svm_ep:damage/deal_normal {"damage":"0","attacker":"@n[tag=executor]","type":"'no_cooldown'"}

scoreboard players operation @s svm_ep.deal_damage = %damage svm_ep.numbers
scoreboard players operation @s svm_ep.deal_damage /= %5 svm_ep.numbers
execute at @s run function svm_ep:damage/deal_normal {"damage":"0","attacker":"@n[tag=executor]","type":"'true'"}

particle minecraft:item{item:redstone_block} ~ ~1 ~ 0.15 0.15 0.15 0.2 50
playsound minecraft:entity.sheep.shear master @a[distance=..25] ~ ~1 ~ 1 2
