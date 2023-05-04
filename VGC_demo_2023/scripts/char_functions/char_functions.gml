/// @param object
/// @param name
/// @param textbox
/// @param option_box
/// @param portrait
/// @param [portrait_side]
/// @param [font]
/// @param [name_font]
function set_char(_obj, _name, _textbox, _option_box, _portrait) {
	obj = _obj;
	obj.char_name = _name;
	obj.textbox_sprite = _textbox;
	obj.option_box = _option_box;
	obj.portrait = _portrait;
	
	if (argument_count > 5) { 
		obj.portrait_side = argument[5];
		obj.font = argument[6]; 
		obj.name_font = argument[7];
	}
	else { 
		obj.portrait_side = 1; // default to right side
		obj.font = fnt_futura;
		obj.name_font = noone;
	}
}