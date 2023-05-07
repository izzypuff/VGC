// set up box for the game's text
if (setup == false) {
	setup = true;
	
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

if (cur_page < array_length(page_bg)) {
	// layer_background_sprite() not working, just drawing manually
	//var layer_id = layer_get_id("Background");
	//layer_background_sprite(layer_id, page_bg[cur_page]);
	cur_bg = page_bg[cur_page]
}

if (cur_bg != noone) { draw_sprite(cur_bg, 0, 0, 0); }

show_debug_message(shake_signal[cur_page]);

#region //----screen shake signals----//
if (cur_page < array_length(shake_signal)) {
	if (shake_signal[cur_page][0] == 0) {
		shook = false;
	}
	else {
		if (!shook) {
			show_debug_message("shaking");
			shake_screen(shake_signal[cur_page][0], shake_signal[cur_page][1]);
			shook = true;
		}
	}
}
#endregion

#region //-----type each character-----//
if (draw_char < page_length[cur_page]) {
	draw_char += type_speed;
	draw_char = clamp(draw_char, 0, page_length[cur_page]);
}
#endregion

#region //-----move through lines on key press-----//
if (keyboard_check_pressed(global.accept_key)) {
	// if line is done
	if (draw_char >= page_length[cur_page]) {
		if (cur_page < page_amount - 1) { 
			cur_page++;
			draw_char = 0;
		}
		else {
			if (option_amount > 0) { scr_jump(option_link_id[option_pos]); }
			else if (jump_link != "") { scr_jump(jump_link); }
			else { visible = false; }
		}
	}
	else {
		draw_char = page_length[cur_page];
	}
}
#endregion

#region //-----draw textbox elements-----//
cur_char = page_char[cur_page];
if (cur_page < array_length(page_portrait)) { 
	if (cur_portrait != page_portrait[cur_page]) { portrait_alpha = 0; } // reset alpha
	cur_portrait = page_portrait[cur_page]; 
}

if (cur_portrait != noone) {
	var _x = room_width / 2 + (80 * cur_char.portrait_side);
	var _y = camera_get_view_height(view_camera[0]);
	draw_sprite_ext(cur_portrait, 0, 1450, _y, 0.6, 0.6, image_angle, image_blend, portrait_alpha);
	if (cur_page < array_length(por_easing)) {
		if (por_easing[cur_page]) { portrait_alpha += fade_speed; }
		else { portrait_alpha = 1; }
	}
}
// placed after portrait so textbox is on top
// draw textbox based on character
draw_sprite_ext(cur_char.textbox_sprite, 0, x, y, global.ui_scale, global.ui_scale, image_angle, image_blend, image_alpha);
// draw name
if (cur_char.name_font != noone) { 
	draw_set_font(cur_char.name_font); 
	draw_text(x+30, y-100, cur_char.char_name);
}
#endregion

#region //-----draw options-----//
if (option_amount > 0) {
	if (draw_char >= page_length[cur_page] and cur_page == page_amount - 1) {
		// option selection
		option_pos -= keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
		option_pos = clamp(option_pos, 0, option_amount-1);
	
		// draw the options
		// space between the option boxes
		var _op_space = 120;
		// the border in the boxes of the text
		var _op_border = 25;
		for (var op = 0; op < option_amount; op++) {	
			var _x = 600;
			var _y = 540 - _op_space * op;
			draw_sprite_ext(cur_char.option_box, 0, _x, _y, global.ui_scale, global.ui_scale, image_angle, image_blend, image_alpha);
		
			if (cur_char.font != noone) { draw_set_font(cur_char.font); }
			else { draw_set_font(fnt_futura); }
			draw_text(_x+_op_border, _y, option[op]);
		}
		
		// draw arrow indicator
		indicator.x = _x-50;
		indicator.y = 540 - _op_space * option_pos;
		indicator.visible = true;
		
	}
}
else {
	indicator.visible = false;	
}
#endregion

#region //-----draw text-----//
if (cur_char.font != noone) { draw_set_font(cur_char.font); }
else { draw_set_font(fnt_futura); }
var temp_text = string_copy(page[cur_page], 1, draw_char);
draw_text_ext(x + padding, y + padding, temp_text, line_sep, line_width);
#endregion