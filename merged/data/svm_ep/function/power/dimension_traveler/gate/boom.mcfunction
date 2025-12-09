particle minecraft:explosion ~ ~1 ~ 1 1 1 0 3
particle minecraft:flash{color:0xffffffff} ~ ~1 ~
particle minecraft:end_rod ~ ~1 ~ 0 0 0 2 100
particle minecraft:end_rod ~ ~1 ~ 0 0 0 5 250

playsound minecraft:block.conduit.deactivate master @a[distance=..20] ~ ~ ~ 1 2
playsound minecraft:block.conduit.deactivate master @a[distance=..20] ~ ~ ~ 1 1
playsound minecraft:block.conduit.deactivate master @a[distance=..20] ~ ~ ~ 1 0
playsound minecraft:entity.wither.break_block master @a[distance=..20] ~ ~ ~ 1 0
playsound minecraft:entity.wither.break_block master @a[distance=..20] ~ ~ ~ 1 1
playsound minecraft:entity.wither.break_block master @a[distance=..20] ~ ~ ~ 1 2
playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..20] ~ ~ ~ 1 2
playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..20] ~ ~ ~ 1 1
playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..20] ~ ~ ~ 1 0
effect give @a[distance=..20] minecraft:blindness 1 0 true


execute positioned ~ ~1 ~ if predicate svm_ep:chance/50_percent run function svm_ep:power/dimension_traveler/gate/ray/shoot
execute positioned ~ ~1 ~ if predicate svm_ep:chance/50_percent run function svm_ep:power/dimension_traveler/gate/ray/shoot
execute positioned ~ ~1 ~ if predicate svm_ep:chance/50_percent run function svm_ep:power/dimension_traveler/gate/ray/shoot
execute positioned ~ ~1 ~ if predicate svm_ep:chance/50_percent run function svm_ep:power/dimension_traveler/gate/ray/shoot
execute positioned ~ ~1 ~ if predicate svm_ep:chance/50_percent run function svm_ep:power/dimension_traveler/gate/ray/shoot
execute positioned ~ ~1 ~ if predicate svm_ep:chance/50_percent run function svm_ep:power/dimension_traveler/gate/ray/shoot
execute positioned ~ ~1 ~ if predicate svm_ep:chance/50_percent run function svm_ep:power/dimension_traveler/gate/ray/shoot
execute as @s[scores={svm_ep.lifetime=300..}] run summon minecraft:lightning_bolt
tag @s add svm_ep.boomed


kill @s[scores={svm_ep.lifetime=300..}]
