// screenshake
if (shaking) {
	var _x = view_x + random_range(-shake_amount, shake_amount);
	var _y = view_y + random_range(-shake_amount, shake_amount);
	camera_set_view_pos(cam, view_x + _x, _y)
}
else {
	camera_set_view_pos(cam, view_x, view_y);
}
