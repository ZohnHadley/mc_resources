#execute as @e[scores={svm_ep.ability.using=1..}] run function svm_ep:ability/using
execute unless entity @s[scores={svm_ep.using_move=1..}] run return run scoreboard players reset @s svm_ep.ability.using

execute unless entity @s[scores={svm_ep.ability.using=..100000}] run return 0
execute store result storage svm_ep:ability temp.selected int 1 run scoreboard players get @s svm_ep.ability.using

function svm_ep:ability/using2 with storage svm_ep:ability temp