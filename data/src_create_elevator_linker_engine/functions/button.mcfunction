execute as @e[tag=create_elevator_linker.transmitter.button] at @s if block ~ ~ ~ stone_button[powered=true] at @e[tag=create_elevator_linker.receiver.button] if score @s create_elevator_linker.elevator_id = @e[tag=create_elevator_linker.component, limit=1, sort=nearest] create_elevator_linker.elevator_id if score @s create_elevator_linker.floor = @e[tag=create_elevator_linker.component, limit=1, sort=nearest] create_elevator_linker.floor run scoreboard players set @e[tag=create_elevator_linker.component, limit=1, sort=nearest] create_elevator_linker.receive_timeout 2