// list of characters

function create_chars() {

	global.char_devon = instance_create_layer(0, 0, "Characters", asset_character);
	set_char(global.char_devon, "Devon", spr_textbox, spr_temp_portrait, -1, fnt_futura);

	global.char_narrator = instance_create_layer(0, 0, "Characters", asset_character);
	set_char(global.char_narrator, "Narrator", spr_tb_narrator, noone);

}