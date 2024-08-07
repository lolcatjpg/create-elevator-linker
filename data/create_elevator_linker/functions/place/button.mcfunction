# fail feedback
execute if entity @e[type=armor_stand, distance=..1, limit=1] run tellraw @p [{"text": "❌ could not place button: there is already a device on this location", "color": "red"}]
execute unless entity @e[type=glow_item_frame, distance=..1, limit=1] run tellraw @p [{"text": "❌ could not place button: no glow item frame found on current location", "color": "red"}]

# create button
execute at @s align xyz positioned ~.5 ~ ~.5 as @e[type=glow_item_frame, distance=..1, limit=1] unless entity @e[type=armor_stand, distance=..0.5] run function src_create_elevator_linker:place/button
