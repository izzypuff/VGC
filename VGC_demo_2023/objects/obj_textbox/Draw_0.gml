draw_self();

// set up box for the game's text
if (setup == false) {
	setup = true;
	
	// TODO set font based on character
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	page_amount = array_length(page);
	for (var p = 0; p < page_amount; p++) {
		// get the length of every line of text
		page_length[p] = string_length(page[p]);
	}
}

// type each character
if (draw_char < page_length[cur_page]) {
	draw_char += type_speed;
	draw_char = clamp(draw_char, 0, page_length[cur_page]);
}

// move through lines on key press
if (keyboard_check_pressed(global.accept_key)) {
	// if line is done
	if (draw_char >= page_length[cur_page]) {
		if (cur_page < page_amount - 1) { 
			cur_page++;
			draw_char = 0;
		}
		else {
			instance_destroy();
		}
	}
	else {
		draw_char = page_length[cur_page];
	}
}

// draw text
draw_set_font(fnt_futura); // temp, will set font based on character
var temp_text = string_copy(page[cur_page], 1, draw_char);
draw_text_ext(x + padding, y + padding, temp_text, line_sep, line_width);