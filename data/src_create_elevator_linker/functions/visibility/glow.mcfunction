# give instant health effect for 4 ticks
execute as @e[tag=create_elevator_linker.component] at @a unless score @p create_elevator_linker.placing_elevator_id matches 0 if score @s create_elevator_linker.elevator_id = @p create_elevator_linker.placing_elevator_id if score @s create_elevator_linker.floor = @p create_elevator_linker.placing_floor run effect give @s instant_health 2 1 true
# give glowing if armor stand has any effects with amplifier of 1, and remove glowing if it doesn't
# using ShowParticles to avoid using effect name tag, which is changed by forge
execute as @e[tag=create_elevator_linker.component] if data entity @s {ActiveEffects: [{Amplifier: 1b, ShowParticles: 0b}]} run data merge entity @s {Glowing:true}
execute as @e[tag=create_elevator_linker.component] unless data entity @s {ActiveEffects: [{Amplifier: 1b, ShowParticles: 0b}]} run data merge entity @s {Glowing:false}
