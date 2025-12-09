tag @s remove teleport
function svm_ep:power/slime/spit/place_slime_block
particle minecraft:item{item:slime_ball} ~ ~-0.7 ~ 0 0 0 1.2 10
playsound minecraft:entity.slime.attack master @a[distance=..30] ~ ~ ~ 2 0
particle minecraft:sneeze ~ ~-0.7 ~ 0 0 0 0.4 5
scoreboard players remove @s svm_ep.mana 1
scoreboard players set @s svm_ep.p.slime_ability_07_delay 10
scoreboard players add @s svm_ep.used_move 3
