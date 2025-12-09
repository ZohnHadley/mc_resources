

scoreboard players operation %cooldown1 svm_ep.numbers = @s svm_ep.p.explosion_ability_07_delay
function svm_ep:system/cooldown/calculate

execute as @s[type=player,advancements={svm_ep:unlocked_ability/explosion/7=false}] run return 0
execute unless entity @s[scores={svm_ep.mana=50..}] run return run function svm_ep:system/message/not_enough_mana
execute if score %cooldown1 svm_ep.numbers matches 1.. run return run function svm_ep:system/message/on_cooldown
execute as @s[scores={svm_ep.using_move=1..}] run return run function svm_ep:system/message/using_move


scoreboard players set @s svm_ep.using_move 900

scoreboard players set @s svm_ep.p.explosion_ability_07_delay 600
scoreboard players operation @s[type=player] svm_ep.p.explosion_ability_07_delay += @s svm_ep.tick
scoreboard players operation @s[type=!player] svm_ep.p.explosion_ability_07_delay += %WORLD svm_ep.tick






#>>
