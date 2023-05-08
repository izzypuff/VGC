op_length = array_length(options);

if (!input_box.accepting) {
	// cycles through options using keyboard input
	if (keyboard_check_pressed(up_key)) {
		audio_play_sound(sfx_scroll, 1, false);
		if (op_pos <= 0) { op_pos = op_length - 1; }
		else { op_pos -= 1; }
	}
	if (keyboard_check_pressed(down_key)) {
		audio_play_sound(sfx_scroll, 1, false);
		if (op_pos >= op_length - 1) { op_pos = 0; }
		else { op_pos += 1; }
	}
}

if (keyboard_check_pressed(global.accept_key)) {
	audio_play_sound(sfx_select, 1, false);
	switch (op_pos) {
		// play
		case 0:
			input_box.visible = true;
			input_box.accepting = true;
			layer_set_visible("Blackout", true);
		break;
		// settings
		case 1:
			room_goto(rm_credits);
		break;
		// quit
		case 2:
			game_end();
		break;
		
	}
}


