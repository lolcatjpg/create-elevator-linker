# executed as item frame at @s
summon armor_stand ~ ~ ~ {Small:true, NoGravity:true, Tags: ["create_elevator_linker.receiver.button", "create_elevator_linker.component"], CustomName: '{"text": "button receiver", "color": "aqua"}', CustomNameVisible: true}
execute rotated as @s run tp @e[type=armor_stand, distance=..1, tag=create_elevator_linker.component] ~ ~ ~ ~ ~

# place link
function src_create_elevator_linker:component/button_receiver/place_link

# set scoreboard values from nearest player
scoreboard players operation @e[type=armor_stand, sort=nearest, limit=1, tag=create_elevator_linker.receiver.button] create_elevator_linker.elevator_id = @p create_elevator_linker.placing_elevator_id
scoreboard players operation @e[type=armor_stand, sort=nearest, limit=1, tag=create_elevator_linker.receiver.button] create_elevator_linker.floor = @p create_elevator_linker.placing_floor

# success feedback
tellraw @p [{"text": "receiver placed", "color": "green"}]

# fail feedback in src:init/button