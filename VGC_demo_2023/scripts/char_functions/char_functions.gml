/// @param name
/// @param textbox
/// @param portrait
/// @param [portrait_side]
/// @param [font]
function set_char(_name, _textbox, _portrait, por_side, _font) {
	name = _name;
	potrait = _portrait;
	
	if (argument_count > 3) { 
		portrait_side = por_side;
		font = argument[4]; 
	}
	else { 
		portrait_side = -1; // default to left side
		font = fnt_futura;
	}
}