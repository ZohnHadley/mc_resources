scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.water_ability_01_delay
function svm_ep:system/cooldown/calculate

#execute as @s[type=player,advancements={svm_ep:unlocked_ability/water/1=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=5..}] run return run function svm_ep:system/message/not_enough_mana
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move



scoreboard players add @s svm_ep.used_move 20
scoreboard players remove @s svm_ep.mana 5


scoreboard players set @s svm_ep.p.water_ability_01_delay 10
scoreboard players operation @s[type=player] svm_ep.p.water_ability_01_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.water_ability_01_delay += %WORLD svm_ep.tick






execute unless items entity @s weapon.mainhand minecraft:bucket unless items entity @s weapon.mainhand minecraft:glass_bottle run return run scoreboard players set @s svm_ep.using_move 100


playsound minecraft:item.bottle.fill master @a[distance=..25] ~ ~ ~ 1 0.9 0.1

execute if items entity @s weapon.mainhand bucket[minecraft:count=1] run return run item modify entity @s weapon.mainhand {function:"minecraft:set_item",item:"minecraft:water_bucket"}
execute if items entity @s weapon.mainhand glass_bottle[minecraft:count=1] run return run item modify entity @s weapon.mainhand [{function:"minecraft:set_item",item:"minecraft:potion",conditions:[]},{function:"minecraft:set_potion",id:"minecraft:water"}]


execute if items entity @s weapon.mainhand glass_bottle run give @s potion[minecraft:potion_contents={potion:"minecraft:water"}]
execute if items entity @s weapon.mainhand bucket run give @s water_bucket
item modify entity @s weapon.mainhand svm_ep:consume