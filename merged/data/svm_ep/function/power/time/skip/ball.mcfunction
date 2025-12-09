# Center of the sphere is at ~ ~ ~

# Main Axis Points (X, Y, Z)
execute positioned ~ ~ ~ run setblock ~10 ~ ~ stone
execute positioned ~ ~ ~ run setblock ~-10 ~ ~ stone
execute positioned ~ ~ ~ run setblock ~ ~10 ~ stone
execute positioned ~ ~ ~ run setblock ~ ~-10 ~ stone
execute positioned ~ ~ ~ run setblock ~ ~ ~10 stone
execute positioned ~ ~ ~ run setblock ~ ~ ~-10 stone

# Diagonal Points (Better 45° Coverage)
execute positioned ~ ~ ~ run setblock ~8 ~6 ~0 stone
execute positioned ~ ~ ~ run setblock ~-8 ~6 ~0 stone
execute positioned ~ ~ ~ run setblock ~8 ~-6 ~0 stone
execute positioned ~ ~ ~ run setblock ~-8 ~-6 ~0 stone

execute positioned ~ ~ ~ run setblock ~6 ~8 ~0 stone
execute positioned ~ ~ ~ run setblock ~-6 ~8 ~0 stone
execute positioned ~ ~ ~ run setblock ~6 ~-8 ~0 stone
execute positioned ~ ~ ~ run setblock ~-6 ~-8 ~0 stone

execute positioned ~ ~ ~ run setblock ~0 ~8 ~6 stone
execute positioned ~ ~ ~ run setblock ~0 ~8 ~-6 stone
execute positioned ~ ~ ~ run setblock ~0 ~-8 ~6 stone
execute positioned ~ ~ ~ run setblock ~0 ~-8 ~-6 stone

execute positioned ~ ~ ~ run setblock ~0 ~6 ~8 stone
execute positioned ~ ~ ~ run setblock ~0 ~6 ~-8 stone
execute positioned ~ ~ ~ run setblock ~0 ~-6 ~8 stone
execute positioned ~ ~ ~ run setblock ~0 ~-6 ~-8 stone

execute positioned ~ ~ ~ run setblock ~6 ~0 ~8 stone
execute positioned ~ ~ ~ run setblock ~6 ~0 ~-8 stone
execute positioned ~ ~ ~ run setblock ~-6 ~0 ~8 stone
execute positioned ~ ~ ~ run setblock ~-6 ~0 ~-8 stone

# Edge Points (More Side Coverage)
execute positioned ~ ~ ~ run setblock ~8 ~0 ~6 stone
execute positioned ~ ~ ~ run setblock ~-8 ~0 ~6 stone
execute positioned ~ ~ ~ run setblock ~8 ~0 ~-6 stone
execute positioned ~ ~ ~ run setblock ~-8 ~0 ~-6 stone
