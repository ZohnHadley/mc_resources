#$data modify storage svm_ep:power id append value $(data)


data remove storage svm_ep:menu power.temp
data modify storage svm_ep:menu power.temp set from storage svm_ep:power temp
data remove storage svm_ep:menu power.temp.obtain_function
data remove storage svm_ep:menu power.temp.obtainable
data modify storage svm_ep:menu power.temp.icon set value 'svm_ep:icon/base'
data modify storage svm_ep:menu power.temp.description set value "Description"
data modify storage svm_ep:menu power.temp.ability_points set value "Null"
$function svm_ep:menu/moves/setup/$(power)
#data modify storage svm_ep:menu power.temp.abilities append value {"label":"","width":1,"action":{"type": "minecraft:run_command","command":"trigger svm_ep.menu set 2"}}
#data modify storage svm_ep:menu power.temp.abilities append value {"label":"","width":1,"action":{"type": "minecraft:run_command","command":"trigger svm_ep.menu set 2"}}
#data modify storage svm_ep:menu power.temp.abilities append value {"label":{"text":"Main Menu","color":"#e00043"},"action":{"type": "minecraft:run_command","command":"trigger svm_ep.menu set 1"}}

$data modify storage svm_ep:menu power.$(power) set from storage svm_ep:menu power.temp

scoreboard players set %get_power_into_roll svm_ep.numbers 0



$data modify storage svm_ep:menu chooser.powers append value {label:{text:"$(name)",color:"$(color)"},width:120,action:{type:"minecraft:run_command",command:"$(obtain_function)"}}

execute unless data storage svm_ep:power {temp:{obtainable:false}} run scoreboard players set %get_power_into_roll svm_ep.numbers 1
#execute if data storage svm_ep:power {temp:{obtainable:false}} run scoreboard players set %get_power_into_roll svm_ep.numbers 0
$execute if score $(power)Obtainable svm_ep.gamerule matches 1 run scoreboard players set %get_power_into_roll svm_ep.numbers 1
$execute if score $(power)Obtainable svm_ep.gamerule matches 0 run scoreboard players set %get_power_into_roll svm_ep.numbers 0



execute if score %get_power_into_roll svm_ep.numbers matches 1 run data modify storage svm_ep:power roll append from storage svm_ep:power temp.obtain_function