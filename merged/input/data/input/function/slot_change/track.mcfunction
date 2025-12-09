
execute store result score @s input.selected_slot run data get entity @s SelectedItemSlot
execute unless score @s input.selected_slot_last_tick = @s input.selected_slot run function input:slot_change/on_change