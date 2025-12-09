execute unless entity @s[scores={svm_ep.p.flora_harvest_type=1..}] run function svm_ep:power/flora/harvest/set_type
execute as @s[scores={svm_ep.p.flora_harvest_type=1}] if block ~ ~ ~ #svm_ep:flora_harvest/grass run return run function svm_ep:power/flora/harvest/destroy
execute as @s[scores={svm_ep.p.flora_harvest_type=2}] if block ~ ~ ~ #svm_ep:flora_harvest/flowers run return run function svm_ep:power/flora/harvest/destroy
execute as @s[scores={svm_ep.p.flora_harvest_type=3}] if block ~ ~ ~ #svm_ep:flora_harvest/leaves run return run function svm_ep:power/flora/harvest/destroy
execute as @s[scores={svm_ep.p.flora_harvest_type=4}] if block ~ ~ ~ #svm_ep:flora_harvest/mushrooms run return run function svm_ep:power/flora/harvest/destroy
execute as @s[scores={svm_ep.p.flora_harvest_type=5}] if block ~ ~ ~ #svm_ep:flora_harvest/wood run return run function svm_ep:power/flora/harvest/destroy
execute as @s[scores={svm_ep.p.flora_harvest_type=6}] if block ~ ~ ~ #svm_ep:flora_harvest/moss run return run function svm_ep:power/flora/harvest/destroy
execute as @s[scores={svm_ep.p.flora_harvest_type=7}] if block ~ ~ ~ #svm_ep:flora_harvest/crops run return run function svm_ep:power/flora/harvest/destroy
execute as @s[scores={svm_ep.p.flora_harvest_type=8}] if block ~ ~ ~ #svm_ep:flora_harvest/aquatic run return run function svm_ep:power/flora/harvest/destroy
execute as @s[scores={svm_ep.p.flora_harvest_type=9}] if block ~ ~ ~ #svm_ep:flora_harvest/special run return run function svm_ep:power/flora/harvest/special
