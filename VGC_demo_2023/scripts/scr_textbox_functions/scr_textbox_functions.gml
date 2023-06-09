/// @param text
/// @param character_name
function scr_text(_text, _char_name){
	// in case of uppercase returned
	_char_name = string_lower(_char_name);
	
	page[page_amount] = _text;
	
	switch (_char_name) {
		case "devon":
			page_char[page_amount] = global.char_devon;
			global.char_devon.char_name = "Devon";
		break;
		
		case "???":
			page_char[page_amount] = global.char_devon_unknown;
		break;
		
		case "mc":
			page_char[page_amount] = global.char_mc;
		break;
		
		case "narrator":
			page_char[page_amount] = global.char_narrator;
		break;
		
		case "ninez":
			page_char[page_amount] = global.char_ninez;
		break;
		
		case "arianna":
			page_char[page_amount] = global.char_arianna;
		break;
		
		case "????":
			page_char[page_amount] = global.char_ari_unknown;
		break;
		
		default:
			show_error("Error: Invalid character name", true);
		break;
	}
	
	
	page_amount++;
}

function scr_option(_option, _link_id) {
	// insert at 0 so that options will be drawn in correct order
	array_insert(option, 0, _option);
	array_insert(option_link_id, 0, _link_id);
	option_amount++;
}

/// @param sprite
/// @param [easing]
function scr_set_sprite(_sprite) {
	// set in between sprites for pages
	if (page_amount > 0) {
		for (var p = last_portrait + 1; p < page_amount; p++) {
			page_portrait[p] = page_portrait[last_portrait];
		}
	}
	
	// optional paramater to toggle easing, default to true
	if (argument_count > 1) { por_easing[page_amount] = argument[1]; }
	else { por_easing[page_amount] = true; }
	
	page_portrait[page_amount] = _sprite;
	last_portrait = page_amount;
}

/// @param bg_sprite;
function scr_set_bg(_sprite) {
	if (page_amount > 0) {
		for (var p = last_bg + 1; p < page_amount; p++) {
			page_bg[p] = page_bg[last_bg];
		}
	}
	
	page_bg[page_amount] = _sprite;
	last_bg = page_amount;
}

function scr_set_jump(_link_id) {
	jump_link = _link_id;
}

function scr_jump(_link_id) {

	// clear pages
	array_delete(page, 0, page_amount);
	array_delete(page_length, 0, page_amount);
	array_delete(page_char, 0, page_amount);
	array_delete(page_bg, 0, page_amount);
	array_delete(page_portrait, 0, page_amount);
	array_delete(por_easing, 0, page_amount);
	array_delete(shake_signal, 0, page_amount)
	page_amount = 0;
	cur_page = 0;
	last_portrait = 0;
	last_bg = 0;
	last_signal = 0;	
			
	// clear options
	array_delete(option, 0, option_amount);
	array_delete(option_link_id, 0, option_amount);
	option_link_id[0] = -1;
	option_amount = 0;
	option_pos = 0;	
				
	jump_link = "";
	scr_game_text(_link_id);
	scr_text_defaults();
	setup = false; // setup page lengths again
}

function scr_shake_signal(_time, _amount) {
	if (page_amount > 0) {
		for (var p = last_signal + 1; p < page_amount; p++) {
			shake_signal[p] = [0,0];
		}
	}
	
	shake_signal[page_amount] = [_time, _amount];
	last_signal = page_amount;
}

function scr_text_defaults(){
	// store where in our big page of text what positons should the text move onto the next line
	// instead of keep droawing to the right
	// 2d array bc you can have any number of line breaks per page
	// set super high to make sure that line_break_num's 0 is saved to be breaking hte line 0 spaces in
	line_break_pos[0, page_amount] = 999;
	line_break_num[page_amount] = 0;
	// width in pixels that we need to reset each indavidual characters x position
	// aka whenever the text is typing and we need a line break, we nee to know how long that line
	// of text actually is so we can measure where the next line break needs to be
	line_break_offset[page_amount] = 0;
}