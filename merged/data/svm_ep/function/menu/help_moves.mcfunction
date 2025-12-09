#THIS WILL 
execute as @s[tag=!svm_ep.power_user] run return run dialog show @s {type:"minecraft:notice",title:[{text:" ",color:"#4f4d4d"},{text:"P",color:"#03ffb8"},{text:"o",color:"#2dfec5"},{text:"w",color:"#58fdd2"},{text:"e",color:"#82fcdf"},{text:"r",color:"#adfbec"},{text:" ",color:"#d8fafa"},{text:"I",color:"#a2fbe9"},{text:"n",color:"#6dfcd9"},{text:"f",color:"#38fdc8"},{text:"o",color:"#03ffb8"}],body:{type:"minecraft:item",item:{id:"minecraft:barrier"},description:{text:"Obtain a power to see its abilities!"},show_decorations:0b,show_tooltip:0b,height:16},can_close_with_escape:1b,pause:1b}


execute as @s[tag=svm_ep.phase_user] run return run function svm_ep:menu/moves/dialog {power:"phase"}
execute as @s[tag=svm_ep.lightning_user] run return run function svm_ep:menu/moves/dialog {power:"lightning"}
execute as @s[tag=svm_ep.flora_user] run return run function svm_ep:menu/moves/dialog {power:"flora"}
execute as @s[tag=svm_ep.slime_user] run return run function svm_ep:menu/moves/dialog {power:"slime"}
execute as @s[tag=svm_ep.explosion_user] run return run function svm_ep:menu/moves/dialog {power:"explosion"}
execute as @s[tag=svm_ep.ice_user] run return run function svm_ep:menu/moves/dialog {power:"ice"}
execute as @s[tag=svm_ep.gravity_user] run return run function svm_ep:menu/moves/dialog {power:"gravity"}
execute as @s[tag=svm_ep.harpie_user] run return run function svm_ep:menu/moves/dialog {power:"harpie"}
execute as @s[tag=svm_ep.dimension_traveler_user] run return run function svm_ep:menu/moves/dialog {power:"dimension_traveler"}
execute as @s[tag=svm_ep.fire_user] run return run function svm_ep:menu/moves/dialog {power:"fire"}
execute as @s[tag=svm_ep.void_user] run return run function svm_ep:menu/moves/dialog {power:"void"}
execute as @s[tag=svm_ep.time_user] run return run function svm_ep:menu/moves/dialog {power:"time"}
execute as @s[tag=svm_ep.healing_user] run return run function svm_ep:menu/moves/dialog {power:"healing"}
execute as @s[tag=svm_ep.death_user] run return run function svm_ep:menu/moves/dialog {power:"death"}
execute as @s[tag=svm_ep.copy_user] run return run function svm_ep:menu/moves/dialog {power:"copy"}
execute as @s[tag=svm_ep.water_user] run return run function svm_ep:menu/moves/dialog {power:"water"}
function #svm_ep:menu/power_info