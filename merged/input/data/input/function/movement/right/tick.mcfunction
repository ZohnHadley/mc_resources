execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{right:1b}}}} run return run function input:movement/right/end


advancement revoke @s only input:movement/right/tick
scoreboard players add @s input.right_time 1
