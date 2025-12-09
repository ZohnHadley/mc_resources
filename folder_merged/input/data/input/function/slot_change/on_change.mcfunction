scoreboard players operation @s input.selected_slot_last_tick = @s input.selected_slot
advancement revoke @s only input:inventory_changed/potential_equipment_change
function #input:changed_slot