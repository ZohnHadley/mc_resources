summon marker ~ ~ ~ {Tags:["new","svm_ep.stripe","svm_ep.crack"]}
execute as @e[tag=new] run function svm_ep:system/set_random_rotation
scoreboard players add @e[tag=new] svm_ep.lifetime 1
scoreboard players add @s svm_ep.lifetime 1
function svm_ep:system/crack/destroy_2
tag @e remove new