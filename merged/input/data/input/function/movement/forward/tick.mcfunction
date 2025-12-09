execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{forward:1b}}}} run return run function input:movement/forward/end


advancement revoke @s only input:movement/forward/tick
scoreboard players add @s input.forward_time 1
