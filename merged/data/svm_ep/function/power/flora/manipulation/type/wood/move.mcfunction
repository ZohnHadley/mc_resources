
execute unless block ~ ~ ~ #svm_core:no_hitbox at @s run return run clone from svm_ep:technical 0 0 0 0 0 0 ~ ~ ~ filtered #svm_ep:flora_manipulation/wood

function svm_ep:break_block
tag @s add shooter
execute if entity @n[tag=executor,scores={svm_ep.selected_ability=1}] at @s summon marker run function svm_ep:power/flora/manipulation/type/wood/w_plant_growth
tag @s remove shooter
scoreboard players add @n[tag=executor] svm_ep.mana_drain 3
tp @s ~ ~ ~ 
clone from svm_ep:technical 0 0 0 0 0 0 ~ ~ ~ filtered #svm_ep:flora_manipulation/wood




scoreboard players set %STATE svm_ep.numbers 0
execute at @s positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#svm_ep:technical,dx=0] run function svm_ep:power/flora/manipulation/type/wood/hitby
execute if score %STATE svm_ep.numbers matches 1 at @s run function svm_ep:power/flora/manipulation/type/wood/end