execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=svm_ep.flora_block_on_cooldown,dx=0] run return 0
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=svm_ep.flora_manipulated_block,dx=0] run return 0

execute if block ~ ~ ~ minecraft:big_dripleaf_stem positioned ~ ~1 ~ if block ~ ~ ~ #svm_ep:flora_manipulation/leap run return run function svm_ep:power/flora/manipulation/type/leap

execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["svm_ep.flora_block_on_cooldown","svm_ep.flora_manipulation_cd.leap","svm_ep.temporary_marker"],Fire:-140}
execute align xyz run effect give @e[dx=0] minecraft:levitation 1 15 true
execute align xyz positioned ~ ~-1 ~ run effect give @e[dx=0] minecraft:levitation 1 15 true
execute align xyz positioned ~0.5 ~1.5 ~0.5 run playsound minecraft:block.big_dripleaf.tilt_down block @a[distance=..25] ~ ~1 ~ 1.6 0.9
execute align xyz positioned ~0.5 ~1.5 ~0.5 run playsound minecraft:entity.breeze.jump block @a[distance=..25] ~ ~1 ~ 1.6 1.5
execute align xyz positioned ~0.5 ~1.5 ~0.5 run particle minecraft:cloud ~ ~.3 ~ 0.1 0.3 0.1 0.35 7