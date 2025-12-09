#IF RAYCAST ON ICE
execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle minecraft:dust{color:[0.25,0.65,1],scale:1.5f} ~ ~ ~ 0.35 0.35 0.35 0.01 3 force @a[distance=..150]


scoreboard players operation %CHANCE svm_ep.numbers = @s svm_ep.p.water_manipulation_ice_success_rate.score
scoreboard players operation %CHANCE svm_ep.numbers /= %DISTANCE svm_ep.numbers
scoreboard players operation %CHANCE svm_ep.numbers /= %DISTANCE svm_ep.numbers

execute store success score %SUCCESS svm_ep.numbers if predicate [{condition:"minecraft:random_chance",chance:{type:"minecraft:score",target:{type:"minecraft:fixed",name:"%CHANCE"},score:"svm_ep.numbers",scale:0.002}}]




execute if score %SUCCESS svm_ep.numbers matches 0 run return run function svm_ep:power/water/manipulation/ice/gain_score


#BLOCK CHANGE
scoreboard players set %STATE svm_ep.numbers 1
execute if block ~ ~ ~ minecraft:packed_ice run scoreboard players set %STATE svm_ep.numbers 2
execute if block ~ ~ ~ minecraft:blue_ice run scoreboard players set %STATE svm_ep.numbers 3

execute if score %STATE svm_ep.numbers matches 1 run setblock ~ ~ ~ minecraft:air destroy
execute if block ~ ~ ~ minecraft:packed_ice run setblock ~ ~ ~ minecraft:ice destroy
execute if block ~ ~ ~ minecraft:blue_ice run setblock ~ ~ ~ minecraft:packed_ice destroy