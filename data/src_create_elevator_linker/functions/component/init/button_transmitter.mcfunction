# fail feedback
execute if entity @e[type=armor_stand, distance=..1, tag=create_elevator_linker.component] run tellraw @p [{"text": "❌ could not place button: there is already an elevator component on this location", "color": "red"}]
execute if entity @e[type=armor_stand, distance=..1, tag=create_elevator_linker.component] run kill @s

execute if score @p create_elevator_linker.placing_elevator_id matches 0 run tellraw @p [{"text": "❌ you are not currently working on an elevator", "color": "red"}]
execute if score @p create_elevator_linker.placing_elevator_id matches 0 run kill @s

# create button
execute align xyz positioned ~.5 ~ ~.5 unless score @p create_elevator_linker.placing_elevator_id matches 0 unless entity @e[type=armor_stand, distance=..1, tag=create_elevator_linker.component] run function src_create_elevator_linker:component/button_transmitter/init
data merge entity @s {Item: {id: "air"}}
tag @s remove create_elevator_linker.init_component.button_transmitter