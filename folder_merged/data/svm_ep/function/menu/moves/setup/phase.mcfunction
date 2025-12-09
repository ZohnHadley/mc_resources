data modify storage svm_ep:menu power.temp.icon set value 'svm_ep:icon/phase'
data modify storage svm_ep:menu power.temp.description set value "The power to completely avoid physical boundaries along with incoming damage. So powerful, yet cheap, somebody great must have developed those!"



#REGISTER ABILITIES
function svm_ep:menu/moves/add_ability/main {"name":"Quick Phase","use_requirement":"Requires 5 mana","description":"Makes you phase through walls and gives you invincibility for a short amount of time","id_number":"7","unlock_id":"20075","unlock_requirement":"Unlocked by default"}
function svm_ep:menu/moves/add_ability/main {"name":"Phase","use_requirement":"Requires 20 mana","description":"Makes you phase through walls and gives you invincibility for a decent amount of time","id_number":"8","unlock_id":"20002","unlock_requirement":"Click to unlock for 10 Ability Points"}
function svm_ep:menu/moves/add_ability/main {"name":"Full Phase","use_requirement":"Requires 40 mana","description":"Makes you phase through walls and gives you invincibility for a long amount of time","id_number":"9","unlock_id":"20003","unlock_requirement":"Click to unlock for 15 Ability Points"}
function svm_ep:menu/moves/add_ability/main {"name":"Clear Eyes","use_requirement":"Requires 50 mana","description":"Clears your eyes while phasing for some amount of time","id_number":"4","unlock_id":"20047","unlock_requirement":"Click to unlock for 20 Ability Points"}



#TEMPLATE FOR CHAT GPT TO HELP UPDATE
#OLD(example without unlocking)
#tellraw @s [{"text":"| ","color":"gray"},{"text":"Quick Phase ","color":"yellow","hover_event":{"action":"show_text","value":""}},{"text":"- ","color":"gray"},{"text":" [Bind]","color":"#F4D5FF","click_event":{"action":"run_command","command":"/trigger svm_ep.z.bind_ability set 7"},"hover_event":{"action":"show_text","value":"Click to bind to selected slot"}}]
#NEW
#function svm_ep:menu/moves/add_ability/main {"name":"Quick Phase","use_requirement":"Requires 5 mana","description":"Makes you phase through walls and gives you invincibility for a short amount of time","id_number":"7","unlock_id":"20075","unlock_requirement":"Unlocked by default"}


#OLD(example with unlocking)
#tellraw @s [{"text":"| ","color":"gray"},{"text":"Phase ","color":"yellow","hover_event":{"action":"show_text","value":""}},{"text":"- Requires 20 mana","color":"gray"},{"text":" [Bind]","color":"#F4D5FF","click_event":{"action":"run_command","command":"/trigger svm_ep.z.bind_ability set 8"},"hover_event":{"action":"show_text","value":"Click to bind to selected slot"}},{"text":" [Unlock]","color":"#8fffef","click_event":{"action":"run_command","command":"/trigger svm_ep.menu set 20002"},"hover_event":{"action":"show_text","value":"Click to unlock for 10 Ability Points"}}]
#NEW
#function svm_ep:menu/moves/add_ability/main {"name":"Phase","use_requirement":"Requires 20 mana","description":"Makes you phase through walls and gives you invincibility for a decent amount of time","id_number":"8","unlock_id":"20002","unlock_requirement":"Click to unlock for 10 Ability Points"}



#TO UPDATE
#tellraw @s [{"text":"| ","color":"gray"},{"text":"Full Phase ","color":"yellow","hover_event":{"action":"show_text","value":"Makes you phase through walls and gives you invincibility for a long amount of time"}},{"text":"- Requires 40 mana","color":"gray"},{"text":" [Bind]","color":"#F4D5FF","click_event":{"action":"run_command","command":"/trigger svm_ep.z.bind_ability set 9"},"hover_event":{"action":"show_text","value":"Click to bind to selected slot"}},{"text":" [Unlock]","color":"#8fffef","click_event":{"action":"run_command","command":"/trigger svm_ep.menu set 20003"},"hover_event":{"action":"show_text","value":"Click to unlock for 15 Ability Points"}}]
#tellraw @s [{"text":"| ","color":"gray"},{"text":"Clear Eyes ","color":"yellow","hover_event":{"action":"show_text","value":"Clears your eyes while phasing for some ammount of time"}},{"text":"- Requires 50 mana","color":"gray"},{"text":" [Bind]","color":"#F4D5FF","click_event":{"action":"run_command","command":"/trigger svm_ep.z.bind_ability set 4"},"hover_event":{"action":"show_text","value":"Click to bind to selected slot"}},{"text":" [Unlock]","color":"#8fffef","click_event":{"action":"run_command","command":"/trigger svm_ep.menu set 20047"},"hover_event":{"action":"show_text","value":"Click to unlock for 20 Ability Points"}}]
