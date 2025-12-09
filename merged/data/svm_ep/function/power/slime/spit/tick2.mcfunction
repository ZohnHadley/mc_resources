scoreboard players add @s svm_ep.lifetime 1
execute at @s run particle minecraft:item{item:slime_ball} ~ ~0.5 ~ 0.5 0.5 0.5 0.15 10
execute at @s run playsound minecraft:entity.slime.squish_small master @a[distance=..20] ~ ~1 ~ 1 0.8
execute at @s[scores={svm_ep.lifetime=1}] positioned ~ ~ ~ run function svm_ep:power/slime/spit/place_slime_block

execute as @s[scores={svm_ep.lifetime=..2}] run return 0
execute at @s positioned ~1 ~ ~ run function svm_ep:power/slime/spit/place_slime_block
execute at @s positioned ~-1 ~ ~ run function svm_ep:power/slime/spit/place_slime_block
execute at @s positioned ~ ~1 ~ run function svm_ep:power/slime/spit/place_slime_block
execute at @s positioned ~ ~-1 ~ run function svm_ep:power/slime/spit/place_slime_block
execute at @s positioned ~ ~ ~1 run function svm_ep:power/slime/spit/place_slime_block
execute at @s positioned ~ ~ ~-1 run function svm_ep:power/slime/spit/place_slime_block

execute if entity @e[tag=svm_ep.slime_user,scores={svm_ep.p.awakened=1..},distance=..30] run return run execute as @s[scores={svm_ep.lifetime=4..}] run function svm_ep:power/slime/spit/tick3

kill @s