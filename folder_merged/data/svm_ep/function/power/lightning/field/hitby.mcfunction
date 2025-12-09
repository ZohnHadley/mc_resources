effect give @s minecraft:slowness 1 2 true
effect give @s minecraft:weakness 1 2 true
particle minecraft:electric_spark ~ ~1 ~ 0.5 1 0.5 3 10
playsound minecraft:entity.guardian.attack master @a[distance=..20] ~ ~ ~ 1.33 2
execute positioned ~ ~1 ~ if predicate svm_ep:chance/33_percent run function svm_ep:power/lightning/field/ray/shoot
execute positioned ~ ~1 ~ if predicate svm_ep:chance/33_percent run function svm_ep:power/lightning/field/ray/shoot
execute positioned ~ ~1 ~ if predicate svm_ep:chance/33_percent run function svm_ep:power/lightning/field/ray/shoot
function svm_ep:power/lightning/field/ray/shoot
function svm_ep:power/lightning/field/ray/shoot
damage @s 1 minecraft:no_cooldown by @e[tag=executor,limit=1,sort=nearest]
