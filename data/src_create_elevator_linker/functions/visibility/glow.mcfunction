# give instant health effect for 4 ticks
# when player placing id and floor matches
execute as @e[tag=create_elevator_linker.component] at @a unless score @p create_elevator_linker.placing_elevator_id matches 0 if score @s create_elevator_linker.elevator_id = @p create_elevator_linker.placing_elevator_id if score @s create_elevator_linker.floor = @p create_elevator_linker.placing_floor run effect give @s instant_health 2 1 true
# when highlight mode is on for a player within 32 block radius
execute as @e[tag=create_elevator_linker.component] at @s if entity @a[scores={create_elevator_linker.highlight_mode=1}, distance=..32] run effect give @s instant_health 2 1 true

# give glowing if armor stand has any effects with amplifier of 1, and remove glowing if it doesn't
# using ShowParticles to avoid using effect name tag, which is changed by forge
execute as @e[tag=create_elevator_linker.component] if data entity @s {ActiveEffects: [{Amplifier: 1b, ShowParticles: 0b}]} run data merge entity @s {Glowing:true}
execute as @e[tag=create_elevator_linker.component] unless data entity @s {ActiveEffects: [{Amplifier: 1b, ShowParticles: 0b}]} run data merge entity @s {Glowing:false}
# show partticles if armor stand has any effects with amplifier of 1
execute at @e[tag=create_elevator_linker.component] as @a unless score @s create_elevator_linker.placing_elevator_id matches 0 if score @e[tag=create_elevator_linker.component, limit=1, sort=nearest] create_elevator_linker.elevator_id = @s create_elevator_linker.placing_elevator_id if score @e[tag=create_elevator_linker.component, limit=1, sort=nearest] create_elevator_linker.floor = @s create_elevator_linker.placing_floor run particle minecraft:happy_villager ~ ~1 ~ 0.0 0.2 0.0 0 1 force @s
