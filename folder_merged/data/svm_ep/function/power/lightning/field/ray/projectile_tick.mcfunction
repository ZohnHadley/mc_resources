scoreboard players add @s svm_ep.lifetime 1
execute unless entity @s[scores={svm_ep.p.lightning_electric_string_direction=1..}] store result score @s svm_ep.p.lightning_electric_string_direction run random value 1..4



execute at @s run function svm_ep:power/lightning/electric_string/tick0
scoreboard players add @s[scores={svm_ep.p.lightning_electric_string_direction=1..4}] svm_ep.p.lightning_electric_string_direction 4

function svm_ep:power/lightning/field/ray/move
function svm_ep:power/lightning/field/ray/move
function svm_ep:power/lightning/field/ray/move


execute at @s run function svm_ep:power/lightning/electric_string/tick0
execute at @s run function svm_ep:power/lightning/electric_string/tick0
scoreboard players remove @s[scores={svm_ep.p.lightning_electric_string_direction=5..8}] svm_ep.p.lightning_electric_string_direction 4

function svm_ep:power/lightning/field/ray/move
function svm_ep:power/lightning/field/ray/move
function svm_ep:power/lightning/field/ray/move

execute at @s run function svm_ep:power/lightning/electric_string/tick0
scoreboard players reset @s svm_ep.p.lightning_electric_string_direction

kill @s[scores={svm_ep.lifetime=3..}]