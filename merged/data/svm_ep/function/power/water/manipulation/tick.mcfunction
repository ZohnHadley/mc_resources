scoreboard players add @s svm_ep.p.water_ability_04_delay 1
scoreboard players add @s svm_ep.p.water_manipulation_tick 1
scoreboard players add @s svm_ep.using_move 1
execute unless predicate svm_ep:holding_ability run function svm_ep:power/water/manipulation/end

execute as @s[scores={svm_ep.p.water_manipulation_state=0}] run function svm_ep:power/water/manipulation/default/tick
execute as @s[scores={svm_ep.p.water_manipulation_state=1,svm_ep.using_move=1..}] run function svm_ep:power/water/manipulation/droplet/tick
execute as @s[scores={svm_ep.p.water_manipulation_state=2}] at @s anchored eyes positioned ^ ^ ^ run function svm_ep:power/water/manipulation/in_water/tick
execute as @s[scores={svm_ep.p.water_manipulation_state=3}] at @s anchored eyes positioned ^ ^ ^ run function svm_ep:power/water/manipulation/drown/tick
execute as @s[scores={svm_ep.p.water_manipulation_state=4}] at @s anchored eyes positioned ^ ^ ^ run function svm_ep:power/water/manipulation/whirlpool/tick
#execute as @s[scores={svm_ep.p.water_manipulation_state=5}] at @s anchored eyes positioned ^ ^ ^ run function svm_ep:power/water/manipulation/pick_up/tick
execute as @s[scores={svm_ep.p.water_manipulation_state=6}] at @s anchored eyes positioned ^ ^ ^ run function svm_ep:power/water/manipulation/launch/tick
execute as @s[scores={svm_ep.p.water_manipulation_state=7}] at @s anchored eyes positioned ^ ^ ^ run function svm_ep:power/water/manipulation/launch/manipulate
execute as @s[scores={svm_ep.p.water_manipulation_state=8}] at @s anchored eyes positioned ^ ^ ^ run function svm_ep:power/water/manipulation/ice/tick
