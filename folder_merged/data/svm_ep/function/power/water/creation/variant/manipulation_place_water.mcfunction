execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run return 0
execute if block ~ ~ ~ water run return 0
function svm_ep:power/water/temporary/place
execute if block ~ ~ ~ water run particle minecraft:poof ~ ~ ~ 0.4 0.4 0.4 0.25 5

#scoreboard players operation water svm_ep.numbers *= %water_creation_manipulation_increase_by_water svm_ep.world_settings