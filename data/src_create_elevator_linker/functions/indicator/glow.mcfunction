# give instant health effect for 4 ticks
execute as @e[tag=create_elevator_linker.component] at @a[scores={create_elevator_linker.placing_elevator_id = -2147483648..2147483647}] if score @s create_elevator_linker.elevator_id = @p create_elevator_linker.placing_elevator_id if score @s create_elevator_linker.floor = @p create_elevator_linker.placing_floor run effect give @s instant_health 2
# give glowing if armor stand has any effects, and remove glowing if it doesn't (not checking for specific effect, because forge modifies the tags of effect nbt
execute as @e[tag=create_elevator_linker.component] if data entity @s ActiveEffects run data merge entity @s {Glowing:true}
execute as @e[tag=create_elevator_linker.component] unless data entity @s ActiveEffects run data merge entity @s {Glowing:false}
