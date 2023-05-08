image_xscale = global.ui_scale;
image_yscale = global.ui_scale;

// TODO fix space inserted at beginning
if (space_fixed == false) { 
	keyboard_string = string_delete(keyboard_string, 1, 1); 
	space_fixed = true;
}

draw_set_halign(fa_center);
var _x = camera_get_view_width(view_camera[0]) / 2;

switch (enter_presses) {
	case 0:
		draw_text(_x, y-100, "What's your name?");
		draw_text(_x, y+200, "Press enter when you're done!");
	break;
	
	case 1:
		if (keyboard_check_pressed(vk_escape)) {
			enter_presses--;
			accepting = true;
		}
		draw_text(_x, y-100, "What's your name?");
		draw_text(_x, y+200, "Press again to confirm");
		draw_text(_x, y+250, "Escape to cancel");
	break;
	
	case 2:
		draw_text(_x, y-100, "Ok " + global.mc_name + ", what's your gamer tag?");
		draw_text(_x, y+200, "Press enter when you're done!");
	break;
	
	case 3:
		if (keyboard_check_pressed(vk_escape)) {
			enter_presses--;
			accepting = true;
		}
		draw_text(_x, y-100, "Ok " + global.mc_name + ", what's your gamer tag?");
		draw_text(_x, y+200, "Press again to confirm");
		draw_text(_x, y+250, "Escape to cancel");
	break;
}


if (keyboard_check_pressed(vk_enter)) {
	enter_presses++;
	switch (enter_presses) {
		case 1:
			accepting = false;
			// check for valid input
			var length = string_length(message);
			for (var c = 1; c < length; c++) {
				var char = string_char_at(message, c);
				if (char == " ") {
					// remove spaces
					message = string_delete(message, c, 1);
				}
			}
		break;
		
		case 2:
			global.mc_name = message;
			accepting = true;
			keyboard_string = "";
		break;
		
		case 3:
			accepting = false;
		break;
		
		case 4:
			global.mc_tag = message;
			room_goto(rm_game);
		break;
	}
}

draw_self();
draw_set_halign(fa_left);
draw_text(x+padding, y+padding+10, message + cursor);


if (accepting) {
	if (string_length(keyboard_string) < limit) { message = keyboard_string; }
	else { keyboard_string = message; }
}