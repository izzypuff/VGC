// list of characters

function create_chars() {
	// Devon
	global.char_devon = instance_create_layer(0, 0, "Characters", asset_character);
	set_char(global.char_devon, "Devon", spr_tb_devon, spr_ob_devon, spr_portrait_devon, -1, fnt_futura, fnt_devon);
	
	// Devon unknown ("???")
	global.char_devon_unknown = instance_create_layer(0, 0, "Characters", asset_character);
	set_char(global.char_devon_unknown, "???", spr_tb_devon, spr_ob_devon, spr_portrait_devon, -1, fnt_futura, fnt_devon);
	
	// Narrator
	global.char_narrator = instance_create_layer(0, 0, "Characters", asset_character);
	set_char(global.char_narrator, "Narrator", spr_tb_narrator, spr_ob_narrator, noone);
	
	// Main Character
	global.char_mc = instance_create_layer(0, 0, "Characters", asset_character);
	set_char(global.char_mc, global.mc_name, spr_tb_mc, spr_ob_mc, noone);

	// Professor Ninez
	global.char_ninez = instance_create_layer(0, 0, "Characters", asset_character);
	set_char(global.char_ninez, "Ninez", spr_tb_narrator_tab, spr_ob_narrator, noone, 1, fnt_futura, fnt_futura);
	
	// Arianna
	global.char_arianna = instance_create_layer(0, 0, "Characters", asset_character);
	set_char(global.char_arianna, "Arianna", spr_tb_narrator_tab, spr_ob_narrator, noone, 1, fnt_futura, fnt_futura);
	
	// Arianna unknown ("????");
	global.char_ari_unknown = instance_create_layer(0, 0, "Characters", asset_character);
	set_char(global.char_ari_unknown, "???", spr_tb_narrator_tab, spr_ob_narrator, noone, 1, fnt_futura, fnt_futura);
	
}