# add scoreboard objectives here.

# tellraw @a {"text": "🛈 create elevator linker loaded!", "color": "green", "bold": true}
say §a🛈 §ocreate elevator linker loaded!§r

scoreboard objectives add create_elevator_linker.elevator_id dummy
scoreboard objectives add create_elevator_linker.floor dummy
scoreboard objectives add create_elevator_linker.placing_elevator_id trigger
scoreboard objectives add create_elevator_linker.placing_floor trigger

scoreboard objectives add create_elevator_linker.shift_floor trigger
scoreboard objectives add create_elevator_linker.shift_current_floor trigger
scoreboard objectives add create_elevator_linker.shift_id trigger

scoreboard objectives add create_elevator_linker.highlight_mode dummy
scoreboard objectives add create_elevator_linker.highlight_mode_timer_s dummy
scoreboard objectives add create_elevator_linker.highlight_mode_timer_t dummy
