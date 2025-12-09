
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=svm_ep.flora_block_on_cooldown,dx=0] run return 0
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=svm_ep.flora_manipulated_block,dx=0] run return 0

scoreboard players operation %OLD svm_ep.numbers = @s svm_ep.raycast_length
scoreboard players set @s svm_ep.raycast_length -1

execute unless entity @s[scores={svm_ep.p.flora_manipulation_type=1..}] run function svm_ep:power/flora/manipulation/set_type

execute as @s[scores={svm_ep.p.flora_manipulation_type=1}] if block ~ ~ ~ #svm_ep:flora_manipulation/flowers run return run function svm_ep:power/flora/manipulation/type/flowers
execute as @s[scores={svm_ep.p.flora_manipulation_type=2}] if block ~ ~ ~ #svm_ep:flora_manipulation/leap run return run function svm_ep:power/flora/manipulation/type/leap
execute as @s[scores={svm_ep.p.flora_manipulation_type=3}] if block ~ ~ ~ #svm_ep:flora_manipulation/leaves run return run function svm_ep:power/flora/manipulation/type/leaves
execute as @s[scores={svm_ep.p.flora_manipulation_type=4}] if block ~ ~ ~ #svm_ep:flora_manipulation/moss run return run function svm_ep:power/flora/manipulation/type/moss
execute as @s[scores={svm_ep.p.flora_manipulation_type=5}] if block ~ ~ ~ #svm_ep:flora_manipulation/other run return run function svm_ep:power/flora/manipulation/type/other
execute as @s[scores={svm_ep.p.flora_manipulation_type=6}] if block ~ ~ ~ #svm_ep:flora_manipulation/vines run return run function svm_ep:power/flora/manipulation/type/vines
execute as @s[scores={svm_ep.p.flora_manipulation_type=7}] if block ~ ~ ~ #svm_ep:flora_manipulation/wood run return run function svm_ep:power/flora/manipulation/type/wood
scoreboard players operation @s svm_ep.raycast_length = %OLD svm_ep.numbers
