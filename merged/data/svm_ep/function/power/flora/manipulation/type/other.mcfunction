#LAUNCH
execute if block ~ ~ ~ #svm_ep:flora_manipulation/launch summon marker run function svm_ep:power/flora/manipulation/type/launch/start
#ROOT ENTANGLE
execute if block ~ ~ ~ minecraft:rooted_dirt run function svm_ep:power/flora/root_entangle/apply

#SWEET BERRY BUSH
execute if block ~ ~ ~ minecraft:sweet_berry_bush[age=2] run function svm_ep:power/flora/piercing_thorns/effect
execute if block ~ ~ ~ minecraft:sweet_berry_bush[age=3] run function svm_ep:power/flora/piercing_thorns/effect
execute if block ~ ~ ~ minecraft:sweet_berry_bush[age=2] if predicate svm_ep:chance/33_percent run setblock ~ ~ ~ minecraft:sweet_berry_bush[age=1]
execute if block ~ ~ ~ minecraft:sweet_berry_bush[age=3] if predicate svm_ep:chance/33_percent run setblock ~ ~ ~ minecraft:sweet_berry_bush[age=2]
execute if block ~ ~ ~ minecraft:sweet_berry_bush run return 0
#PUMPKIN
execute if block ~ ~ ~ minecraft:pumpkin run function svm_ep:power/flora/manipulation/type/carve/use

#CACTUS
execute if block ~ ~ ~ minecraft:cactus run return run function svm_ep:power/flora/manipulation/type/cactus/use


scoreboard players reset @s svm_ep.using_move