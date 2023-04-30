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