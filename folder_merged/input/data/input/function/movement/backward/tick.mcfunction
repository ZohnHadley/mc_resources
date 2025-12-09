execute unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{backward:1b}}}} run return run function input:movement/backward/end


advancement revoke @s only input:movement/backward/tick
scoreboard players add @s input.backward_time 1
