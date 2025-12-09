scoreboard players set @s svm_ep.effect 0
execute as @s[scores={svm_ep.e.gravity_strengthen=1..}] run function svm_ep:entity/effect/gravity_strengthen
execute as @s[scores={svm_ep.e.weight_neutralizer=1..}] run function svm_ep:entity/effect/weight_neutralizer
execute as @s[scores={svm_ep.e.gravity_inverter=1..}] run function svm_ep:entity/effect/gravity_inverter
execute as @s[scores={svm_ep.e.flora_thorned=1..}] run function svm_ep:entity/effect/thorned
execute as @s[scores={svm_ep.e.petals_of_peace=1..}] run function svm_ep:entity/effect/petals_of_peace
execute as @s[scores={svm_ep.e.grass_step=1..}] run function svm_ep:entity/effect/grass_step
execute as @s[scores={svm_ep.e.root_entangle=1..}] run function svm_ep:entity/effect/root_entangle
execute as @s[scores={svm_ep.e.warped_fungus=1..}] run function svm_ep:entity/effect/warped_fungus
execute as @s[scores={svm_ep.e.inescapable_garden=1..}] run function svm_ep:entity/effect/inescapable_garden
execute as @s[scores={svm_ep.e.accelerated=1..}] run function svm_ep:entity/effect/accelerated
execute as @s[scores={svm_ep.e.harpie_wings=1..}] run function svm_ep:entity/effect/harpie_wings
execute as @s[scores={svm_ep.e.harpie_grabbed=1..}] run function svm_ep:entity/effect/grabbed
execute as @s[scores={svm_ep.e.freezed=1..}] run function svm_ep:entity/effect/freezed
execute as @s[scores={svm_ep.e.haunted=1..}] run function svm_ep:entity/effect/haunted/tick
execute as @s[scores={svm_ep.e.fighting_style=1..}] run function svm_ep:entity/effect/fighting_style/tick
execute as @s[scores={svm_ep.e.flora_creaking_heart=1..}] run function svm_ep:entity/effect/flora_creaking_heart/tick
execute as @s[scores={svm_ep.e.fighting_style_awakening=1..}] run function svm_ep:entity/effect/fighting_style_awakening/tick
execute as @s[scores={svm_ep.e.cobwebed=1..}] run function svm_ep:entity/effect/cobwebed/tick
execute as @s[scores={svm_ep.e.infinite_void_fov=1..}] run function svm_ep:entity/effect/infinite_void_fov/tick
execute as @s[scores={svm_ep.e.infinite_void=1..}] run function svm_ep:entity/effect/infinite_void/tick
execute as @s[scores={svm_ep.e.wet=1..}] run function svm_ep:entity/effect/wet/tick
function #svm_ep:effect_tick


scoreboard players reset @s[scores={svm_ep.effect=0}] svm_ep.effect