execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{sprint:1b}}}} run return run function #input:sprint/end


advancement revoke @s only input:sprint/tick
scoreboard players add @s input.sprint_time 1
function #input:sprint/tick