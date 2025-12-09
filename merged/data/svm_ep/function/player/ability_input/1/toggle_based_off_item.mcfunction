execute if items entity @s weapon.* *[minecraft:custom_data~{svm_ep.item:{id:"ability_input"}}] run return run scoreboard players set @s svm_ep.p.silenced 0
scoreboard players set @s svm_ep.p.silenced 1
