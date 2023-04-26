op_length = array_length(options);

// cycles through options using keyboard input
if (keyboard_check_pressed(up_key)) {
	if (op_pos <= 0) { op_pos = op_length - 1; }
	else { op_pos -= 1; }
}
if (keyboard_check_pressed(down_key)) {
	if (op_pos >= op_length - 1) { op_pos = 0; }
	else { op_pos += 1; }
}

if (keyboard_check_pressed(accept_key)) {
	switch (op_pos) {
		// play
		case 0:
			room_goto(rm_game);
		break;
		// settings
		case 1:
			room_goto(rm_settings);
		break;
		
	}
}


