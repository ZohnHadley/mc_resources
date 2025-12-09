execute positioned ~-1 ~-2 ~5 run summon marker ~ ~ ~ {Tags:["ligspa2"]}
execute positioned ~-1 ~-2 ~-5 run summon marker ~ ~ ~ {Tags:["ligspa2"]}
execute positioned ~-5 ~-2 ~ run summon marker ~ ~ ~ {Tags:["ligspa2"]}
execute positioned ~4 ~-2 ~-2 run summon marker ~ ~ ~ {Tags:["ligspa2"]}
execute positioned ~4 ~-2 ~2 run summon marker ~ ~ ~ {Tags:["ligspa2"]}
scoreboard players set @s svm_ep.p.lightning_ability_06_delay 340

execute at @e[tag=ligspa2] run summon minecraft:marker ~ ~ ~ {Tags:["svm_ep.lightning_place","new"]}
scoreboard players operation @e[tag=new] svm_ep.entity_id = @s svm_ep.entity_id
kill @e[tag=ligspa2]
tag @e remove new

