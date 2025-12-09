clone from svm_ep:technical 0 0 0 0 0 0 ~ ~ ~ filtered #svm_ep:flora_manipulation/wood
function svm_ep:power/flora/manipulation/type/wood/setup
tag @s add svm_ep.flora_cannot_regrow
scoreboard players add @n[tag=executor] svm_ep.mana_drain 125

data merge entity @s {Fire:-50}
scoreboard players set @s svm_ep.lifetime -50
scoreboard players set @s svm_ep.kill_after 30