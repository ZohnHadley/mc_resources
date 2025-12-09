
execute if items entity @s weapon.* *[minecraft:custom_data~{svm_ep.item:{id:ability_input}}] run return 0
execute if items entity @s container.* *[minecraft:custom_data~{svm_ep.item:{id:ability_input}}] run return 0
loot give @s loot svm_ep:items/ability_input
execute if items entity @s container.* *[minecraft:custom_data~{svm_ep.item:{id:ability_input}}] run return run advancement revoke @s only message:no_inventory_space_for_use_ability
advancement grant @s only message:no_inventory_space_for_use_ability