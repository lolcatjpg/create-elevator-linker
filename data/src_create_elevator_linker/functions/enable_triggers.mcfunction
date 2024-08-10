scoreboard players enable @a create_elevator_linker.placing_elevator_id
execute as @a unless score @s create_elevator_linker.placing_elevator_id matches 0 run scoreboard players enable @s create_elevator_linker.placing_floor


execute as @a unless score @s create_elevator_linker.placing_elevator_id matches 0 run scoreboard players enable @s create_elevator_linker.shift_floor
execute as @a if score @s create_elevator_linker.placing_elevator_id matches 0 run scoreboard players reset @s create_elevator_linker.shift_floor

execute as @a unless score @s create_elevator_linker.placing_elevator_id matches 0 run scoreboard players enable @s create_elevator_linker.shift_current_floor
execute as @a if score @s create_elevator_linker.placing_elevator_id matches 0 run scoreboard players reset @s create_elevator_linker.shift_current_floor

execute as @a unless score @s create_elevator_linker.placing_elevator_id matches 0 run scoreboard players enable @s create_elevator_linker.shift_id
execute as @a if score @s create_elevator_linker.placing_elevator_id matches 0 run scoreboard players reset @s create_elevator_linker.shift_id
