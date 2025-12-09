execute as @s[scores={svm_ep.selected_ability=9999}] run tellraw @s ["",{"text":"[","color":"gray"},{"text":"!","color":"dark_red"},{"text":"]","color":"gray"},{"text":" Seems like you have unbinded your menu! To use it or bind it again, use ","color":"red"},{"text":"/trigger svm_ep.menu","clickEvent":{"action":"suggest_command","command":"/trigger svm_ep.menu"}}]
scoreboard players set @s[scores={svm_ep.z.bind_ability=9990}] svm_ep.z.bind_ability 0




title @s[scores={svm_ep.z.bind_ability=0}] actionbar ""
execute unless entity @s[scores={svm_ep.z.bind_ability.slot=..-1}] run function svm_ep:menu/bind/main
execute as @s[scores={svm_ep.z.bind_ability.slot=-1}] run function svm_ep:menu/bind/sneak
execute as @s[scores={svm_ep.z.bind_ability.slot=-2}] run function svm_ep:menu/bind/sprint


function svm_ep:player/update_slot
execute at @s run playsound minecraft:ui.loom.take_result master @s ~ ~ ~ 0.5 1.2

scoreboard players reset @s svm_ep.z.bind_ability
scoreboard players enable @s svm_ep.z.bind_ability
scoreboard players reset @s svm_ep.z.bind_ability.slot

# execute as @s[scores={svm_ep.z.bind_ability=..10000}] run return 0


