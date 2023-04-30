/// @param object
/// @param name
/// @param textbox
/// @param portrait
/// @param [portrait_side]
/// @param [font]
function set_char(_obj, _name, _textbox, _portrait, por_side, _font) {
	obj = _obj;
	obj.name = _name;
	obj.textbox_sprite = _textbox;
	obj.portrait = _portrait;
	
	if (argument_count > 4) { 
		obj.portrait_side = por_side;
		obj.font = _font; 
	}
	else { 
		obj.portrait_side = -1; // default to left side
		obj.font = fnt_futura;
	}
}