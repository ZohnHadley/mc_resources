data remove storage svm_ep:menu temp
data merge storage svm_ep:menu {temp:{ability_input:"$(ability_input)",give_ability_input:"$(give_ability_input)"}}

scoreboard players operation %temp svm_ep.numbers = @s input.selected_slot
scoreboard players add %temp svm_ep.numbers 1
execute store result storage svm_ep:menu temp.selected_slot_id_plus_1 int 1.0 run scoreboard players get %temp svm_ep.numbers

data merge storage svm_ep:menu {temp:{ability_input_initial0:true,ability_input_initial1:false,give_ability_input_initial:true}}
execute as @s[scores={svm_ep.ability_input=1}] run data merge storage svm_ep:menu {temp:{ability_input_initial1:true,ability_input_initial0:false}}
execute as @s[scores={svm_ep.give_ability_item=0}] run data modify storage svm_ep:menu temp.give_ability_input_initial set value 0


function svm_ep:menu/settings/display with storage svm_ep:menu temp

# ARGS
#  $(ability_input_initial0) $(ability_input_initial1) $(give_ability_input_initial) $(selected_slot_id_plus_1)
# TO BE PRESERVED
# $(ability_input) $(give_ability_input)



return 0
tellraw @s {"text":"|","color":"gray"}
tellraw @s ["",{"text":"| [","color":"gray"},{"text":"B","color":"#FF9DD0","click_event":{"action":"run_command","command":"/trigger svm_ep.z.bind_ability set 9999"}},{"text":"ind Men","color":"#FFF3FC","click_event":{"action":"run_command","command":"/trigger svm_ep.z.bind_ability set 9999"}},{"text":"u","color":"#FF9DD0","click_event":{"action":"run_command","command":"/trigger svm_ep.z.bind_ability set 9999"}},{"text":"]","color":"gray"}]
tellraw @s ["",{"text":"| [","color":"gray"},{"text":"Bin","color":"aqua","click_event":{"action":"run_command","command":"/trigger svm_ep.z.bind_ability set 9998"}},{"text":"d P","color":"#74FFFF","click_event":{"action":"run_command","command":"/trigger svm_ep.z.bind_ability set 9998"}},{"text":"ower Swi","color":"#96FFFF","click_event":{"action":"run_command","command":"/trigger svm_ep.z.bind_ability set 9998"}},{"text":"tc","color":"#74FFFF","click_event":{"action":"run_command","command":"/trigger svm_ep.z.bind_ability set 9998"}},{"text":"h","color":"aqua","click_event":{"action":"run_command","command":"/trigger svm_ep.z.bind_ability set 9998"}},{"text":"]","color":"gray"}]
tellraw @s ["",{"text":"| [","color":"gray"},{"text":"Unbind Slot","color":"#FF4988","click_event":{"action":"run_command","command":"/trigger svm_ep.menu set 10000"}},{"text":"]","color":"gray"}]
#tellraw @s ["",{"text":"| Save hotbar to slot: [","color":"gray"},{"text":" 1 ","color":"green","click_event":{"action":"run_command","command":"/trigger svm_ep.menu set 11"}},{"text":"] [","color":"gray"},{"text":" 2 ","color":"red","click_event":{"action":"run_command","command":"/trigger svm_ep.menu set 12"}},{"text":"]","color":"gray"}]
tellraw @s ["",{"text":"| [","color":"gray"},{"text":"Bind hotbar switch","color":"#5198CC","click_event":{"action":"run_command","command":"/trigger svm_ep.z.bind_ability set 9997"}},{"text":"]","color":"gray"}]

tellraw @s ["",{"text":"|","color":"gray"},{"text":" Ability usage ","color":"white"},{"text":"[","color":"gray"},{"text":"Right-Click","color":"yellow","click_event":{"action":"run_command","command":"/trigger svm_ep.menu set 3001"},"hover_event":{"action":"show_text","value":"Click to use abilities by Right-Clicking the \"Use Ability\" item"}},{"text":"] [","color":"gray"},{"text":"Shift-Click","color":"red","click_event":{"action":"run_command","command":"/trigger svm_ep.menu set 3000"},"hover_event":{"action":"show_text","value":"Click to use abilities by Shift-Clicking"}},{"text":"]","color":"gray"}]




tellraw @a ["",{"text":"|","color":"gray"},{"text":" Giving Use Ability Item ","color":"white"},{"text":"[","color":"gray"},{"text":"ON","color":"green","click_event":{"action":"run_command","command":"/trigger svm_ep.menu set 3002"},"hover_event":{"action":"show_text","value":"ON"}},{"text":"] [","color":"gray"},{"text":"OFF","color":"red","click_event":{"action":"run_command","command":"/trigger svm_ep.menu set 3003"},"hover_event":{"action":"show_text","value":"OFF"}},{"text":"]","color":"gray"}]
tellraw @s ["",{"text":"| [","color":"gray"},{"text":"Update Item","color":"dark_red","click_event":{"action":"run_command","command":"/trigger svm_ep.menu set 31"},"hover_event":{"action":"show_text","value":"Updates an item from old versions to work on modern, doesn't update the model"}},{"text":"]","color":"gray"}]
