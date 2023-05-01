/// @param text
/// @param character_name
function scr_text(_text, _char_name){
	// in case of uppercase returned
	_char_name = string_lower(_char_name);
	
	page[page_amount] = _text;
	
	switch (_char_name) {
		case "devon":
			page_char[page_amount] = global.char_devon;
		break;
		
		case "mc":
			// main character
		break;
		
		case "narrator":
			page_char[page_amount] = global.char_narrator;
		break;
	}
	
	page_amount++;
}

function scr_option(_option, _link_id) {
	option[option_amount] = _option;
	option_link_id[option_amount] = _link_id;
	option_amount++;
}

function clear_textbox(_link_id) {
	// clear pages
	array_delete(page, 0, page_amount);
	array_delete(page_length, 0, page_amount);
	array_delete(page_char, 0, page_amount);
	page_amount = 0;
	cur_page = 0;
				
	scr_game_text(_link_id);
	setup = false; // setup page lengths again
				
	// clear options
	array_delete(option, 0, option_amount);
	array_delete(option_link_id, 0, option_amount);
	option_amount = 0;
	option_pos = 0;
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