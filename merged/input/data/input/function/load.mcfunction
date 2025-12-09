scoreboard objectives add input.tick minecraft.custom:minecraft.play_time

scoreboard objectives add input.sneak_time dummy
scoreboard objectives add input.sprint_time dummy
scoreboard objectives add input.jump_time dummy
scoreboard objectives add input.using_item_time dummy
scoreboard objectives add input.selected_slot dummy
scoreboard objectives add input.selected_slot_last_tick dummy
scoreboard objectives add input.last_movement_input dummy
scoreboard objectives add input.settings dummy

scoreboard objectives add input.jumped minecraft.custom:minecraft.jump
scoreboard objectives add input.revoke_jump dummy
scoreboard objectives add input.jumped_last dummy

schedule function input:loop 1t replace

#MOVEMENT
scoreboard objectives add input.double_frame dummy

scoreboard objectives add input.forward_time dummy
scoreboard objectives add input.backward_time dummy
scoreboard objectives add input.left_time dummy
scoreboard objectives add input.right_time dummy


scoreboard players set doubleClickFrames input.settings 5
