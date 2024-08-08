summon armor_stand ~ ~ ~ {Small:true, NoGravity:true, Tags: ["create_elevator_linker.transmitter.button", "create_elevator_linker.component"]}

# place button
execute if data entity @s {Facing: 0b} run setblock ~ ~ ~ minecraft:stone_button[face=ceiling]
execute if data entity @s {Facing: 1b} run setblock ~ ~ ~ minecraft:stone_button[face=floor]
execute if data entity @s {Facing: 2b} run setblock ~ ~ ~ minecraft:stone_button[face=wall, facing=north]
execute if data entity @s {Facing: 3b} run setblock ~ ~ ~ minecraft:stone_button[face=wall, facing=south]
execute if data entity @s {Facing: 4b} run setblock ~ ~ ~ minecraft:stone_button[face=wall, facing=west]
execute if data entity @s {Facing: 5b} run setblock ~ ~ ~ minecraft:stone_button[face=wall, facing=east]

# set scoreboard values from nearest player
scoreboard players operation @e[type=armor_stand, sort=nearest, limit=1, tag=create_elevator_linker.transmitter.button] create_elevator_linker.elevator_id = @p create_elevator_linker.placing_elevator_id
scoreboard players operation @e[type=armor_stand, sort=nearest, limit=1, tag=create_elevator_linker.transmitter.button] create_elevator_linker.floor = @p create_elevator_linker.placing_floor

# success feedback
tellraw @p [{"text": "button placed", "color": "green"}]

# fail feedback in create_elevator_linker:place/button