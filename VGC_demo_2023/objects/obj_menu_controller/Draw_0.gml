draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(c_white);

var _x = room_width / 2;

for (var i = 0; i < array_length(options); i++) {
	var color = c_white;
	if (op_pos == i) { color = c_red; }
	draw_text_color(_x, start_y+line_sep*i, options[i], color, color, color, color, 1);
}