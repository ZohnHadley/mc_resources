data merge entity @s {Offers:{Recipes:[{buy:{id:air,count:1},sell:{id:air,count:1}}]},NoAI:1b,PersistenceRequired:1b,Silent:1b,attributes:[{id:"armor",base:0}]}
tag @s add svm_ep.inescapable_garden
scoreboard players set @s svm_ep.projectile 1000
scoreboard players operation @s svm_ep.entity_id = @n[tag=executor] svm_ep.entity_id
data modify entity @s Rotation set from entity @n[tag=executor] Rotation
execute at @s anchored eyes positioned ^ ^ ^ run function svm_ep:break_block

#data merge entity @s {teleport_duration:50}
attribute @s minecraft:scale modifier add svm_ep:inescapable_garden 3 add_multiplied_total
attribute @s minecraft:max_health modifier add svm_ep:inescapable_garden 2000 add_value
execute store result entity @s Health double 1.0 run scoreboard players get @n[tag=executor] svm_ep.p.flora_inescapable_garden_power
execute store result bossbar svm_ep:inescapable_garden max run data get entity @s Health

function svm_ep:power/flora/inescapable_garden/bush/spawn
function svm_ep:power/flora/inescapable_garden/bush/spawn
function svm_ep:power/flora/inescapable_garden/bush/spawn
function svm_ep:power/flora/inescapable_garden/bush/spawn
function svm_ep:power/flora/inescapable_garden/bush/spawn
function svm_ep:power/flora/inescapable_garden/bush/spawn
function svm_ep:power/flora/inescapable_garden/bush/spawn
function svm_ep:power/flora/inescapable_garden/bush/spawn
function svm_ep:power/flora/inescapable_garden/bush/spawn
function svm_ep:power/flora/inescapable_garden/bush/spawn
function svm_ep:power/flora/inescapable_garden/bush/spawn
function svm_ep:power/flora/inescapable_garden/bush/spawn
function svm_ep:power/flora/inescapable_garden/bush/spawn
function svm_ep:power/flora/inescapable_garden/bush/spawn
function svm_ep:power/flora/inescapable_garden/bush/spawn
function svm_ep:power/flora/inescapable_garden/bush/spawn
function svm_ep:power/flora/inescapable_garden/bush/spawn
function svm_ep:power/flora/inescapable_garden/bush/spawn
function svm_ep:power/flora/inescapable_garden/bush/spawn
function svm_ep:power/flora/inescapable_garden/bush/spawn
