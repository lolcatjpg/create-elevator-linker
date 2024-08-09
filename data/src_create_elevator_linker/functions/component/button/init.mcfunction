summon armor_stand ~ ~ ~ {Small:true, NoGravity:true, Tags: ["create_elevator_linker.transmitter.button", "create_elevator_linker.component"], CustomName: '{"text": "button transmitter", "color": "gold"}', CustomNameVisible: true}

# place button
function src_create_elevator_linker:component/button/place_button

# set scoreboard values from nearest player
scoreboard players operation @e[type=armor_stand, sort=nearest, limit=1, tag=create_elevator_linker.transmitter.button] create_elevator_linker.elevator_id = @p create_elevator_linker.placing_elevator_id
scoreboard players operation @e[type=armor_stand, sort=nearest, limit=1, tag=create_elevator_linker.transmitter.button] create_elevator_linker.floor = @p create_elevator_linker.placing_floor

# success feedback
tellraw @p [{"text": "button placed", "color": "green"}]

# fail feedback in create_elevator_linker:place/button