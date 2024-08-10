# reset highlight mode, action bar, tick and seconds score when seconds score == 0
execute as @s run scoreboard players reset @s create_elevator_linker.highlight_mode
execute as @s run title @s actionbar {"text": ""}
execute as @s run scoreboard players reset @s create_elevator_linker.highlight_mode_timer_t
execute as @s run scoreboard players reset @s create_elevator_linker.highlight_mode_timer_s
