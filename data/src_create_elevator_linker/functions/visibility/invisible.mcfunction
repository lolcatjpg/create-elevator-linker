# give instant health effect for 4 ticks
execute as @e[tag=create_elevator_linker.component] at @a[scores={create_elevator_linker.placing_elevator_id = -2147483648..2147483647}] if score @s create_elevator_linker.elevator_id = @p create_elevator_linker.placing_elevator_id run effect give @s instant_health 2 0 true
# give glowing if armor stand has any effects with amplifier of 0, and remove glowing if it doesn't
# using ShowParticles to avoid using effect name tag, which is changed by forge
# amplifier tag is left out, because armor stand has to unhide itself with both amplifier 0 and 1
execute as @e[tag=create_elevator_linker.component] if data entity @s {ActiveEffects: [{ShowParticles: 0b}]} run data merge entity @s {Invisible:false, Marker:false, CustomNameVisible:true}
execute as @e[tag=create_elevator_linker.component] unless data entity @s {ActiveEffects: [{ShowParticles: 0b}]} run data merge entity @s {Invisible:true, Marker:true, CustomNameVisible:false}
