
effect give @s minecraft:slowness 1 5 true


#GET
scoreboard players operation %PARTICLE_COUNT svm_ep.numbers = @s svm_ep.charge_length
scoreboard players operation %PARTICLE_RANGE svm_ep.numbers = @s svm_ep.charge_length
scoreboard players operation %RANGE svm_ep.numbers = @s svm_ep.charge_length

#CHANGE
scoreboard players operation %PARTICLE_COUNT svm_ep.numbers *= %10 svm_ep.numbers
scoreboard players operation %PARTICLE_RANGE svm_ep.numbers /= %2 svm_ep.numbers

#APPLY
execute store result storage svm_ep:numbers input.pc int 1 run scoreboard players get %PARTICLE_COUNT svm_ep.numbers
execute store result storage svm_ep:numbers input.pr int 1 run scoreboard players get %PARTICLE_RANGE svm_ep.numbers
execute store result storage svm_ep:numbers input.r int 1 run scoreboard players get %RANGE svm_ep.numbers

scoreboard players reset @s[scores={svm_ep.using_move=..1251}] svm_ep.using_move
execute as @s run function svm_ep:power/flora/petals_of_peace/range with storage svm_ep:numbers input
