execute as @s[scores={svm_ep.using_move=31500000..}] run return run scoreboard players reset @s svm_ep.using_move
scoreboard players reset @s[scores={svm_ep.using_move=..100020}] svm_ep.using_move
#say 1
execute at @s[scores={svm_ep.using_move=100492}] run playsound minecraft:entity.ender_dragon.growl master @a[distance=..25] ~ ~ ~ 1 0 0.55
execute as @s[scores={svm_ep.using_move=100001..100460}] run return run function svm_ep:power/4fun/domain/tick
execute as @s[scores={svm_ep.using_move=100501..101000}] run return run function svm_ep:power/4fun/meteor/tick
execute as @s[scores={svm_ep.using_move=101001..101100}] run return run function svm_ep:non_power/punch/tick
execute as @s[scores={svm_ep.using_move=101101..101200}] run return run function svm_ep:non_power/forest_wolves/tick
execute as @s[scores={svm_ep.using_move=101301..101400}] run return run function svm_ep:items/hammer/ice/smash/tick
execute as @s[scores={svm_ep.using_move=101401..101500}] run return run function svm_ep:non_power/hollow_purple/tick
#execute as @s[scores={svm_ep.using_move=101501..101600}] run return run function svm_ep:power/telekinesis/ground_pull/tick

