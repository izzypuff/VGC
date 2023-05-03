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
		
		// setting the indiidivual characters and finding where the lines of text should break
		for (var c = 0; c < page_length[p]; c++) {
			
			// string strings start with the value 1 and not 0 we have to add this to make sure that string
			// will start at the begining of the string
			var _char_pos = c+1;
			
			// store ididivual characters in the "char" array
			char[c, p] = string_char_at(page[p], _char_pos);
			
			// get current width of the line (for line breaks)
			var _txt_up_to_char = string_copy(page[p], 1, _char_pos);
			var _current_txt_w = string_width( _txt_up_to_char) - string_width(char[c,p]);
			
			// get the last free space
			if (char[c,p] == " "){
				
				last_free_space = _char_pos+1;
			}
			
			// get the line breaks
			// all were checking for is if the width of the line up to the character where we're at is above our line width
			// then we need to add a break
			if (_current_txt_w - line_break_offset[p] > line_width){
				
				// we record the break in our line break position
				// if the line gets too long halfway through that word, it now breaks the line at the last empty space
				line_break_pos[line_break_num[p], p] = last_free_space;
				// add to line break num because now we have more on this page
				line_break_num[p]++;
				
				// get the line space offset
				// get the string of all of our text up to the last free space
				var _txt_up_to_last_space = string_copy(page[p], 1, last_free_space);
				// get the of our last free space
				var _last_free_space_string = string_char_at(page[p], last_free_space);
				// recording this line break offset
				// getting current text width of only the new line beacuse wer are subracitng all of the previously broken lines	
				line_break_offset[p] = string_width(_txt_up_to_last_space) - string_width(_last_free_space_string);
				
			}
			
		}
		
		// getting each characters cords
		for (var c = 0; c < page_length[p]; c++){
			
			var _char_pos = c+1;
			var _txt_x = x+padding;
			var _txt_y = y+padding;
			// get current width of the line
			var _txt_up_to_char = string_copy(page[p], 1, _char_pos);
			var _current_txt_w = string_width( _txt_up_to_char) - string_width(char[c,p]);
			var _txt_line = 0;
			
			// compensate for string breaks
			for (var lb = 0; lb < line_break_num[p]; lb++;){
				
				// if the current looping character is after the line break
				if (_char_pos >= line_break_pos[lb,p]){
				
					// gettings the updating our current text width so we can know the x pos of our single character
					// and getting out text line so we can know the y position
					// this checks if whatever character we are looping thorugh is greater than line_break[0]
					// that means the line is broken which means that both our x and y info are gonnna need to change
					// first set the x back to loop around from the left again
					// copy string from og text and then copy from that line break positoin (free space) and we want to copy
					// up to the character line position
					// not pos 1 and 2, its pos 1 and then how many characters
					var _str_copy = string_copy(page[p], line_break_pos[lb,p], _char_pos-line_break_pos[lb,p]); 
					// grab the width of that copied string beacuse that's where we want our x offset to be
					// want the character to draw after the last character
					_current_txt_w = string_width(_str_copy);
					
					//record the "line" this character should be on
					_txt_line = lb+1; // +1 since lb starts at 0	
				}
				
			}
			
			// add to the x and y cords based on the new info
			char_x[c, p] = _txt_x + _current_txt_w;
			char_y[c, p] = _txt_y + _txt_line*line_sep;
		}
	}
}

//-----type each character-----//
if (draw_char < page_length[cur_page]) {
	draw_char += type_speed;
	draw_char = clamp(draw_char, 0, page_length[cur_page]);
}

//-----move through lines on key press-----//
if (keyboard_check_pressed(global.accept_key)) {
	// if line is done
	if (draw_char >= page_length[cur_page]) {
		if (cur_page < page_amount - 1) { 
			cur_page++;
			draw_char = 0;
		}
		else {
			if (option_amount > 0) { clear_textbox(option_link_id[option_pos]); }
			else { visible = false; }
		}
	}
	else {
		draw_char = page_length[cur_page];
	}
}

//-----draw textbox elements-----//
cur_char = page_char[cur_page];
if (cur_char.portrait != noone) {
	// TODO set sub images for character (diff expressions)
	//var _x = room_width / 2 + (80 * cur_char.portrait_side);
	var _y = camera_get_view_height(view_camera[0]);
	draw_sprite_ext(cur_char.portrait, 0, 1500, _y, 0.5, 0.5, image_angle, image_blend, image_alpha);
}
// placed after portrait so textbox is on top
// draw textbox based on character
draw_sprite_ext(cur_char.textbox_sprite, 0, x, y, global.ui_scale, global.ui_scale, image_angle, image_blend, image_alpha);

//-----draw options-----//
if (option_amount > 0) {
	if (draw_char >= page_length[cur_page] && cur_page == page_amount - 1) {
		// option selection
		option_pos += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
		option_pos = clamp(option_pos, 0, option_amount-1);
	
		// draw the options
		// space between the option boxes
		var _op_space = 140;
		// the border in the boxes of the text
		var _op_border = 25;
		for (var op = 0; op < option_amount; op++) {
			//var _o_w = string_width(option[op]) + _op_border*2;
			var _y = 500 - _op_space * op;
			draw_sprite_ext(cur_char.option_box, 0, 400, _y, global.ui_scale, global.ui_scale, image_angle, image_blend, image_alpha);
		
			draw_text(400 + _op_border, 500 - _op_space * op, option[op]);
		}	
		
	}
}

//-----draw text-----//
draw_set_font(fnt_futura); // TODO set font based on character
var temp_text = string_copy(page[cur_page], 1, draw_char);
draw_text_ext(x + padding, y + padding, temp_text, line_sep, line_width);