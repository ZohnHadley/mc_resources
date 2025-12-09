spreadplayers ~ ~ 1 30 false @s
execute at @s positioned over motion_blocking_no_leaves run tp @s ~ ~ ~
execute at @s run loot spawn ~ ~ ~ loot svm_ep:cherry_island
execute at @s run playsound minecraft:entity.allay.item_given master @a ~ ~ ~ 1.5 2
execute at @s run particle minecraft:dust{color:[18000000f,18000000f,0.5f],scale:2f} ~ ~ ~ 0.5 0.5 0.5 0 10
execute at @s run particle minecraft:dust{color:[1f,1f,1f],scale:2f} ~ ~3 ~ 0 2 0 0 70

execute at @s run particle minecraft:poof ~ ~ ~ 0 0 0 0.15 10
kill @s[type=marker]