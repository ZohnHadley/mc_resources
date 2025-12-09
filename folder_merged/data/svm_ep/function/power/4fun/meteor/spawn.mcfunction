$execute store result storage svm_ep:numbers r1 int 1 run random value -$(r)..$(r)
$execute store result storage svm_ep:numbers r2 int 1 run random value -$(r)..$(r)


execute summon minecraft:item_display at @s run function svm_ep:power/4fun/meteor/spawn_ with storage svm_ep:numbers