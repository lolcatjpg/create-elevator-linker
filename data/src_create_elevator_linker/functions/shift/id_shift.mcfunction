execute at @s as @e[tag=create_elevator_linker.component] if score @s create_elevator_linker.elevator_id = @p create_elevator_linker.placing_elevator_id if score @s create_elevator_linker.floor = @p create_elevator_linker.placing_floor run scoreboard players operation @s create_elevator_linker.elevator_id = @p create_elevator_linker.shift_id
scoreboard players set @s create_elevator_linker.shift_id 0
