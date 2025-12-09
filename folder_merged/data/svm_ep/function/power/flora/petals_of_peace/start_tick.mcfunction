
scoreboard players add @s svm_ep.charge_length 1

scoreboard players add @s svm_ep.p.flora_ability_28_delay 12
scoreboard players add @s svm_ep.mana_drain 750
scoreboard players add @s svm_ep.using_move 1
scoreboard players add @s svm_ep.used_move 18

execute unless entity @s[scores={svm_ep.mana=8..}] run scoreboard players set @s svm_ep.using_move 1255
execute unless predicate svm_ep:holding_ability run scoreboard players set @s svm_ep.using_move 1255
execute as @s[scores={svm_ep.using_move=1255}] run scoreboard players operation @s svm_ep.using_move += @s svm_ep.charge_length
execute as @s[scores={svm_ep.using_move=1300..}] run scoreboard players set @s svm_ep.using_move 1300


effect give @s minecraft:slowness 1 1 true


#GET
scoreboard players operation %PARTICLE_COUNT svm_ep.numbers = @s svm_ep.charge_length
scoreboard players operation %PARTICLE_RANGE svm_ep.numbers = @s svm_ep.charge_length
scoreboard players operation %RANGE svm_ep.numbers = @s svm_ep.charge_length

#CHANGE
scoreboard players operation %PARTICLE_COUNT svm_ep.numbers *= %5 svm_ep.numbers
scoreboard players operation %PARTICLE_RANGE svm_ep.numbers /= %2 svm_ep.numbers

#APPLY
execute store result storage svm_ep:numbers input.pc int 1 run scoreboard players get %PARTICLE_COUNT svm_ep.numbers
execute store result storage svm_ep:numbers input.pr int 1 run scoreboard players get %PARTICLE_RANGE svm_ep.numbers
execute store result storage svm_ep:numbers input.r int 1 run scoreboard players get %RANGE svm_ep.numbers

function svm_ep:power/flora/petals_of_peace/range with storage svm_ep:numbers input
