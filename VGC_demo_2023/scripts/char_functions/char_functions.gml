/// @param object
/// @param name
/// @param textbox
/// @param option_box
/// @param portrait
/// @param [portrait_side]
/// @param [font]
function set_char(_obj, _name, _textbox, _option_box, _portrait, por_side, _font) {
	obj = _obj;
	obj.name = _name;
	obj.textbox_sprite = _textbox;
	obj.option_box = _option_box;
	obj.portrait = _portrait;
	
	if (argument_count > 5) { 
		obj.portrait_side = por_side;
		obj.font = _font; 
	}
	else { 
		obj.portrait_side = 1; // default to right side
		obj.font = fnt_futura;
	}
}