# remove 1 tick score on every tick
execute as @a[scores={create_elevator_linker.highlight_mode_timer_s=1..}] run scoreboard players remove @s create_elevator_linker.highlight_mode_timer_t 1
# remove 1 second when tick score == 0
execute as @a[scores={create_elevator_linker.highlight_mode_timer_t=..0}] run scoreboard players remove @s create_elevator_linker.highlight_mode_timer_s 1
# reset tick score to 20 when tick score == 0
execute as @a[scores={create_elevator_linker.highlight_mode_timer_t=..0}] unless score @s create_elevator_linker.highlight_mode_timer_s matches ..0 run scoreboard players set @s create_elevator_linker.highlight_mode_timer_t 20

# reset highlight mode, action bar, tick and seconds score when seconds score == 0
execute as @a[scores={create_elevator_linker.highlight_mode_timer_s=..0}] run scoreboard players reset @s create_elevator_linker.highlight_mode
execute as @a[scores={create_elevator_linker.highlight_mode_timer_s=..0}] run title @s actionbar {"text": ""}
execute as @a[scores={create_elevator_linker.highlight_mode_timer_s=..0}] run scoreboard players reset @s create_elevator_linker.highlight_mode_timer_t
execute as @a[scores={create_elevator_linker.highlight_mode_timer_s=..0}] run scoreboard players reset @s create_elevator_linker.highlight_mode_timer_s
