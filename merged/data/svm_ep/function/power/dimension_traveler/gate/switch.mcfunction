#function svm_ep:power/dimension_traveler/gate/switch
scoreboard players set @s[scores={svm_ep.p.dimension_traveler_gate_destination=5..}] svm_ep.p.dimension_traveler_gate_destination 0
scoreboard players add @s svm_ep.p.dimension_traveler_gate_destination 1

#OVERWORLD
execute as @s[scores={svm_ep.p.dimension_traveler_gate_destination=1}] if dimension minecraft:overworld run scoreboard players add @s svm_ep.p.dimension_traveler_gate_destination 1

#NETHER
execute as @s[scores={svm_ep.p.dimension_traveler_gate_destination=2}] if dimension minecraft:the_nether run scoreboard players add @s svm_ep.p.dimension_traveler_gate_destination 1
execute as @s[scores={svm_ep.p.dimension_traveler_gate_destination=2}] if entity @s[advancements={svm_ep:data/visit_nether=false}] run scoreboard players add @s svm_ep.p.dimension_traveler_gate_destination 1

#END
execute as @s[scores={svm_ep.p.dimension_traveler_gate_destination=3}] if dimension minecraft:the_end run scoreboard players add @s svm_ep.p.dimension_traveler_gate_destination 1
execute as @s[scores={svm_ep.p.dimension_traveler_gate_destination=3}] if entity @s[advancements={svm_ep:data/visit_end=false}] run scoreboard players add @s svm_ep.p.dimension_traveler_gate_destination 1

#PARADISE
execute as @s[scores={svm_ep.p.dimension_traveler_gate_destination=4}] if dimension svm_ep:paradise run scoreboard players add @s svm_ep.p.dimension_traveler_gate_destination 1
execute as @s[scores={svm_ep.p.dimension_traveler_gate_destination=4}] if entity @s[advancements={svm_ep:data/visit_paradise=false}] run scoreboard players add @s svm_ep.p.dimension_traveler_gate_destination 1

execute as @s[scores={svm_ep.p.dimension_traveler_gate_destination=5}] if dimension svm_ep:cherry_island run function svm_ep:power/dimension_traveler/gate/switch