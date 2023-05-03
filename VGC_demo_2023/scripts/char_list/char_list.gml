// list of characters

function create_chars() {

	// Devon
	global.char_devon = instance_create_layer(0, 0, "Characters", asset_character);
	set_char(global.char_devon, "Devon", spr_tb_devon, spr_ob_temp, spr_temp_portrait, -1, fnt_futura);

	// Narrator
	global.char_narrator = instance_create_layer(0, 0, "Characters", asset_character);
	set_char(global.char_narrator, "Narrator", spr_tb_narrator, spr_ob_narrator, noone);
	
	// Main Character
	global.char_mc = instance_create_layer(0, 0, "Characters", asset_character);
	set_char(global.char_mc, global.mc_name, spr_tb_mc, spr_ob_mc, noone);

}