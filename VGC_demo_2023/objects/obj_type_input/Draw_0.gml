// TODO fix space inserted at beginning
if (space_fixed == false) { 
	keyboard_string = string_delete(keyboard_string, 1, 1); 
	space_fixed = true;
}


draw_text(x, y-100, "What's your name?");

if (enter_presses = 1) {
	draw_text(x, y+150, "Press enter to confirm");
}

if (keyboard_check_pressed(vk_enter)) {
	enter_presses++;
	if (enter_presses == 1) {
		accepting = false;
		// check for valid input
		//var new_string = string_copy(message, 1, string_length(message) - 1);
		var length = string_length(message);
		for (var c = 1; c < length; c++) {
			var char = string_char_at(message, c);
			if (char == " ") {
				// remove spaces
				message = string_delete(message, c, 1);
			}
		}
		
	}
	
	if (enter_presses == 2) {
		global.mc_name = message;
		room_goto(rm_game);
	}
}

draw_self();
draw_set_halign(fa_left);
draw_text(x+padding, y+padding, message + cursor);


if (accepting) {
	if (string_length(keyboard_string) < limit) { message = keyboard_string; }
	else { keyboard_string = message; }
}