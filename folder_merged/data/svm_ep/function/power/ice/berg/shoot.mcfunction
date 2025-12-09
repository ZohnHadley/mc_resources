execute anchored feet positioned ^ ^ ^4.65 run function svm_ep:power/ice/berg/shoot_small {"rot":"~0 ~"}

execute anchored feet positioned ^ ^ ^2.65 run function svm_ep:power/ice/berg/shoot_small {"rot":"~27 ~"}
execute anchored feet positioned ^ ^ ^2.65 run function svm_ep:power/ice/berg/shoot_small {"rot":"~-27 ~"}
execute anchored feet positioned ^ ^ ^2.65 run function svm_ep:power/ice/berg/shoot_small {"rot":"~ ~-40"}

execute anchored feet positioned ^ ^ ^3.4 run function svm_ep:power/ice/berg/shoot_small {"rot":"~17 ~-23"}
execute anchored feet positioned ^ ^ ^3.4 run function svm_ep:power/ice/berg/shoot_small {"rot":"~-17 ~-23"}

execute anchored feet positioned ^ ^ ^3.4 run function svm_ep:power/ice/berg/shoot_small {"rot":"~13 ~-10"}
execute anchored feet positioned ^ ^ ^3.4 run function svm_ep:power/ice/berg/shoot_small {"rot":"~-13 ~-10"}

execute anchored feet positioned ^ ^ ^3.4 run function svm_ep:power/ice/berg/shoot_small {"rot":"~5 ~-20"}
execute anchored feet positioned ^ ^ ^3.4 run function svm_ep:power/ice/berg/shoot_small {"rot":"~-5 ~-20"}


scoreboard players remove @s svm_ep.p.iceberg_charged 10
scoreboard players set @s[scores={svm_ep.p.iceberg_charged=..0}] svm_ep.p.iceberg_charged 0
execute at @s run playsound minecraft:block.glass.break master @a[distance=..40] ~ ~ ~ 1 0.4
execute positioned ^ ^ ^1 run particle minecraft:block{block_state:ice} ~ ~ ~ 1 1 1 1.4 100
scoreboard players reset @s svm_ep.using_move
scoreboard players reset @s svm_ep.p.iceberg_state
effect clear @s minecraft:slowness
