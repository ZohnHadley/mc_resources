execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{sneak:1b}}}} run return run function #input:sneak/end


advancement revoke @s only input:sneak/tick
scoreboard players add @s input.sneak_time 1
function #input:sneak/tick