draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_white);

var _x = room_width / 2;

for (var i = 0; i < array_length(options); i++) {
	var _sprite = spr_menu_option;
	if (op_pos == i) { _sprite = spr_menu_option_s; }
	draw_sprite_ext(_sprite, 0, _x, start_y+line_sep*i, global.ui_scale, global.ui_scale, image_angle, image_blend, image_alpha);
	
	var color = c_white;
	draw_text_color(_x, start_y+line_sep*i, options[i], color, color, color, color, 1);
}