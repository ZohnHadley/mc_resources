effect give @e[distance=..25] minecraft:slowness 2 10 true
effect give @e[distance=..25] minecraft:weakness 2 10 true
effect give @e[distance=..25] minecraft:darkness 5 0 true
scoreboard players set @s sm.ability_using 500
item replace entity @s weapon with air
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 1.3