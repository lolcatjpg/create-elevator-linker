execute at @s as @e[tag=create_elevator_linker.component] if score @s create_elevator_linker.elevator_id = @p create_elevator_linker.placing_elevator_id run scoreboard players operation @s create_elevator_linker.floor += @p create_elevator_linker.shift_floor
scoreboard players set @s create_elevator_linker.shift_floor 0
