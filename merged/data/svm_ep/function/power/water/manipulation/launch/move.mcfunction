execute unless block ~ ~ ~ #svm_ep:no_physical_hitbox run return run function svm_ep:power/water/manipulation/launch/end
execute unless block ~ ~ ~ water run rotate @s ~ ~1
tp @s ^ ^ ^0.4
tag @e[tag=!same_id,distance=..4.5,type=!#svm_ep:technical] add hitby
tag @e[tag=!same_id,dx=0,type=!#svm_ep:technical] add hitby

execute align xyz positioned ~0.5 ~0.5 ~0.5 run function svm_ep:power/water/temporary/place_fast
execute positioned ^0.4 ^ ^ align xyz positioned ~0.5 ~0.5 ~0.5 run function svm_ep:power/water/temporary/place_fast
execute positioned ^-0.4 ^ ^ align xyz positioned ~0.5 ~0.5 ~0.5 run function svm_ep:power/water/temporary/place_fast
execute positioned ^ ^0.4 ^ align xyz positioned ~0.5 ~0.5 ~0.5 run function svm_ep:power/water/temporary/place_fast
execute positioned ^ ^-0.4 ^ align xyz positioned ~0.5 ~0.5 ~0.5 run function svm_ep:power/water/temporary/place_fast

