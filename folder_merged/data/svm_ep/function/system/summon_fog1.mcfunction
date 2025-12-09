scoreboard players operation @s svm_ep.entity_id = @e[tag=executor] svm_ep.entity_id
tag @s add svm_ep.fog_display
data merge entity @s {transformation:{scale:[4.5f,4.5f,4.5f]}}
data merge entity @s {start_interpolation:-1,interpolation_duration:0}
execute if entity @e[tag=executor,scores={svm_ep.fog_size=1}] run data merge entity @s {transformation:{scale:[4.5f,4.5f,4.5f]}}
execute if entity @e[tag=executor,scores={svm_ep.fog_size=2}] run data merge entity @s {transformation:{scale:[5f,5f,5f]}}
execute if entity @e[tag=executor,scores={svm_ep.fog_size=3}] run data merge entity @s {transformation:{scale:[5.5f,5.5f,5.5f]}}
execute if entity @e[tag=executor,scores={svm_ep.fog_size=4}] run data merge entity @s {transformation:{scale:[6f,6f,6f]}}
execute if entity @e[tag=executor,scores={svm_ep.fog_size=5}] run data merge entity @s {transformation:{scale:[6.5f,6.5f,6.5f]}}
execute if entity @e[tag=executor,scores={svm_ep.fog_size=6}] run data merge entity @s {transformation:{scale:[7f,7f,7f]}}
execute if entity @e[tag=executor,scores={svm_ep.fog_size=7}] run data merge entity @s {transformation:{scale:[7.5f,7.5f,7.5f]}}
execute if entity @e[tag=executor,scores={svm_ep.fog_size=8}] run data merge entity @s {transformation:{scale:[8f,8f,8f]}}
execute if entity @e[tag=executor,scores={svm_ep.fog_size=9}] run data merge entity @s {transformation:{scale:[8.5f,8.5f,8.5f]}}
execute if entity @e[tag=executor,scores={svm_ep.fog_size=10}] run data merge entity @s {transformation:{scale:[9f,9f,9f]}}
execute if entity @e[tag=executor,scores={svm_ep.fog_size=11}] run data merge entity @s {transformation:{scale:[9.5f,9.5f,9.5f]}}
execute if entity @e[tag=executor,scores={svm_ep.fog_size=12}] run data merge entity @s {transformation:{scale:[10f,10f,10f]}}
execute if entity @e[tag=executor,scores={svm_ep.fog_size=13}] run data merge entity @s {transformation:{scale:[10.5f,10.5f,10.5f]}}
execute if entity @e[tag=executor,scores={svm_ep.fog_size=14}] run data merge entity @s {transformation:{scale:[11f,11f,11f]}}
execute if entity @e[tag=executor,scores={svm_ep.fog_size=15}] run data merge entity @s {transformation:{scale:[11.5f,11.5f,11.5f]}}

item replace entity @s container.0 with minecraft:warped_fungus_on_a_stick[minecraft:item_model="svm_ep:fog"]

data merge entity @s {start_interpolation:-1,interpolation_duration:80,display:head}
