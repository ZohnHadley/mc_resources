particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0.5 1
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:10}}}} run particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0.5 3
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:15}}}} run particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0.5 5
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:20}}}} run particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0.5 7
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:25}}}} run particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0.5 9
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:30}}}} run particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0.5 11
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:50}}}} run particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0.5 13
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:10}}}} run playsound minecraft:entity.blaze.burn master @a[distance=..25] ~ ~ ~ 1 0.9 0.5
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:20}}}} run playsound minecraft:entity.blaze.burn master @a[distance=..25] ~ ~ ~ 1.5 1.2 0.5
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{movement:{speed:{min:30}}}} run playsound minecraft:entity.blaze.burn master @a[distance=..25] ~ ~ ~ 2 2 0.5
