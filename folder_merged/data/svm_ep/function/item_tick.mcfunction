execute if items entity @s contents *[minecraft:custom_data~{svm_ep.kill:1b}] run kill @s
execute if items entity @s contents *[minecraft:custom_data~{svm_ep.unpickable:1b}] run data modify entity @s Age set value 150
execute unless items entity @s contents * run kill @s