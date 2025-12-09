function svm_ep:power/ice/berg/place_ice0
execute positioned ^ ^ ^0.45 run function svm_ep:power/ice/berg/place_ice0
execute positioned ^ ^ ^-0.45 run function svm_ep:power/ice/berg/place_ice0
execute positioned ^0.25 ^ ^-0.45 run function svm_ep:power/ice/berg/place_ice0
execute positioned ^-0.25 ^ ^-0.45 run function svm_ep:power/ice/berg/place_ice0
execute positioned ^ ^0.25 ^-0.45 run function svm_ep:power/ice/berg/place_ice0
execute positioned ^ ^-0.25 ^-0.45 run function svm_ep:power/ice/berg/place_ice0
execute as @s[tag=svm_ep.iceberg_projectile,scores={svm_ep.lifetime=..2}] if predicate svm_ep:chance/10_percent summon marker run function svm_ep:power/ice/berg/place_ice_random