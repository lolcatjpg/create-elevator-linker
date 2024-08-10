# generated using https://mcstacker.net/1.20.php tellraw mode | go there and press "import" to edit command
tellraw @s [{"text":"\n==== create elevator linker menu ====\n","color":"gray"},{"text":"    [select elevator id]  ","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"click to select elevator by ID\n","color":"aqua"},{"text":"enter ID and press Enter","color":"gray","italic":true}]},"clickEvent":{"action":"suggest_command","value":"/trigger create_elevator_linker.placing_elevator_id set "}},{"text":"[select nearest]\n","color":"green","hoverEvent":{"action":"show_text","value":[{"text":"select ID and floor of closest elevator component","color":"aqua"}]},"clickEvent":{"action":"run_command","value":"/function create_elevator_linker:select_closest"}},{"text":"    [close edit mode]","color":"red","hoverEvent":{"action":"show_text","value":[{"text":"","color":"red","italic":true}]},"clickEvent":{"action":"run_command","value":"/function src_create_elevator_linker:ui/menu/close_edit"}},{"text":"\n\nchange floor\n","color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"","color":"red","italic":true}]}},{"text":"    [select floor]  ","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"click to select floor\n","color":"aqua"},{"text":"enter floor number and press Enter","color":"gray","italic":true}]},"clickEvent":{"action":"suggest_command","value":"/trigger create_elevator_linker.placing_floor set "}},{"text":"[↑ up]  ","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"","color":"gray","italic":true}]},"clickEvent":{"action":"run_command","value":"/function src_create_elevator_linker:ui/menu/navigate/floor_up"}},{"text":"[↓ down]","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"","color":"gray","italic":true}]},"clickEvent":{"action":"run_command","value":"/function src_create_elevator_linker:ui/menu/navigate/floor_down"}},{"text":"\n\ngive components\n","color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"","color":"gray","italic":true}]}},{"text":"    [everything]\n","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"","color":"gray","italic":true}]},"clickEvent":{"action":"run_command","value":"/function create_elevator_linker:give/all"}},{"text":"    [button transmitter]  ","color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"","color":"gray","italic":true}]},"clickEvent":{"action":"run_command","value":"/function create_elevator_linker:give/button_transmitter"}},{"text":"[button receiver]\n","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"","color":"gray","italic":true}]},"clickEvent":{"action":"run_command","value":"/function create_elevator_linker:give/button_receiver"}},{"text":"    [contact transmitter]  ","color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"","color":"gray","italic":true}]},"clickEvent":{"action":"run_command","value":"/function create_elevator_linker:give/contact_transmitter"}},{"text":"[contact receiver]","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"","color":"gray","italic":true}]},"clickEvent":{"action":"run_command","value":"/function create_elevator_linker:give/contact_receiver"}},{"text":"\n\nshift\n","hoverEvent":{"action":"show_text","value":[{"text":"","color":"gray","italic":true}]}},{"text":"    [shift floor (all)]  ","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"shift the floor of all components with currently selected ID by specified amount\n","color":"aqua"},{"text":"enter amount to shift by and press Enter","color":"gray","italic":true}]},"clickEvent":{"action":"suggest_command","value":"/trigger create_elevator_linker.shift_floor set "}},{"text":"[shift floor (current)]\n","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"shift the floor of all components with currently selected ID and floor by specified amount\n","color":"aqua"},{"text":"enter amount to shift by and press Enter","color":"gray","italic":true}]},"clickEvent":{"action":"suggest_command","value":"/trigger create_elevator_linker.shift_current_floor set "}},{"text":"    [shift id]\n","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"change the ID of all components with currently selected ID and floor to specified value\n","color":"aqua"},{"text":"enter new ID and press Enter","color":"gray","italic":true}]},"clickEvent":{"action":"suggest_command","value":"/trigger create_elevator_linker.shift_id set "}},{"text":"\n=================================\n","hoverEvent":{"action":"show_text","value":[{"text":"","color":"gray","italic":true}]}}]