scoreboard players add @s svm_ep.lifetime 1
scoreboard players set @s[scores={svm_ep.lifetime=..-3}] svm_ep.lifetime -3

execute as @s[scores={svm_ep.p.gravity_field_compress=400..}] run function svm_ep:power/gravity/field/compressed

tag @s add executor
execute at @s run function svm_ep:power/gravity/field/size/calculate
#execute at @s[scores={svm_ep.p.gravity_field_reverted=1}] run function svm_ep:power/gravity/field/size/reverted/calculate

tag @s remove executor


#tellraw @a ["",{"text":"XD ","color":"#858585"},{"score":{"name":"@s","objective":"svm_ep.lifetime"},"color":"#858585"}]
scoreboard players remove @s[scores={svm_ep.lifetime=40..}] svm_ep.p.gravity_field_strength 3
scoreboard players remove @s[scores={svm_ep.lifetime=50..}] svm_ep.p.gravity_field_strength 3
scoreboard players remove @s[scores={svm_ep.lifetime=60..}] svm_ep.p.gravity_field_strength 3
execute as @s[scores={svm_ep.p.gravity_field_strength=..-1}] run function svm_ep:power/gravity/field/end

