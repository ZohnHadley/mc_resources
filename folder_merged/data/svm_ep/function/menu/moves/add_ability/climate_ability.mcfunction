#$say $(name) $(description) $(use_requirement) $(id_number) $(unlock_id) $(unlock_requirement)

$data modify storage svm_ep:menu power.temp.climate_abilities append value {"label":$(name),"width":110,"action":{"type":"minecraft:run_command","command":"trigger svm_ep.z.mid_ability_input set $(id)"}}



#$tellraw @s [{"text":"| ","color":"gray"},{"text":"$(name) ","color":"yellow","hover_event":{"action":"show_text","value":"$(description)"}},{"text":"- $(use_requirement)","color":"gray"},{"text":" [Bind]","color":"#F4D5FF","click_event":{"action":"run_command","command":"/trigger svm_ep.z.bind_ability set $(id_number)"},"hover_event":{"action":"show_text","value":"Click to bind [$(name)] to selected slot"}},{"text":" [Unlock]","color":"#8fffef","click_event":{"action":"run_command","command":"/trigger svm_ep.menu set $(unlock_id)"},"hover_event":{"action":"show_text","value":"[$(name)] $(unlock_requirement)"}}]

