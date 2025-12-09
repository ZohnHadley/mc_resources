#WE HAVE NUMBER LIKE 11, then the slot is the % 10 - 1 of the value (here will be 0), then ability id is value / 10 so here 1

#so this will bind 1 to slot 0

scoreboard players operation %slot svm_ep.numbers = @s svm_ep.z.bind_ability.slot
scoreboard players operation %slot svm_ep.numbers %= %10 svm_ep.numbers
scoreboard players remove %slot svm_ep.numbers 1
scoreboard players operation %id svm_ep.numbers = @s svm_ep.z.bind_ability.slot
scoreboard players operation %id svm_ep.numbers /= %10 svm_ep.numbers
scoreboard players reset @s svm_ep.z.bind_ability.slot
execute store result storage svm_ep:math slots.slot int 1.0 run scoreboard players get %slot svm_ep.numbers
execute store result storage svm_ep:math slots.id int 1.0 run scoreboard players get %id svm_ep.numbers


function svm_ep:menu/bind/full with storage svm_ep:math slots