
item replace entity @s container.0 from entity @n[tag=executor] weapon.mainhand



$data merge entity @s {item:{components:{"minecraft:custom_data":{$(input):{$(slot):$(compiled)}}}}}




#FINALIZE
item replace entity @n[tag=executor] weapon.mainhand from entity @s container.0
kill @s
