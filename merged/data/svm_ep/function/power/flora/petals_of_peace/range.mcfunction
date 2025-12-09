$particle minecraft:dust{color:[18000000f,0.75f,1f],scale:1.5f} ~ ~ ~ $(pr) 0.15 $(pr) 0 $(pc) force @a[distance=..$(r)]
$particle minecraft:cherry_leaves ~ ~ ~ $(pr) 2.15 $(pr) 1 $(pc)

execute unless entity @s[scores={svm_ep.using_move=1..}] run function svm_ep:power/flora/petals_of_peace/end
tag @s add executor
$execute unless entity @s[scores={svm_ep.using_move=1..}] as @e[type=!#svm_ep:technical,distance=0.1..$(r)] run function svm_ep:power/flora/petals_of_peace/in_range
tag @s remove executor
