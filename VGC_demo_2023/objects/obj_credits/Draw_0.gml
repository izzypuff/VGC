var _x = camera_get_view_width(view_camera[0]) / 2 - 850;

draw_set_color(c_white);
draw_set_font(fnt_credits);
draw_set_halign(fa_left);
draw_set_valign(fa_center);

var _y = 100
draw_text(_x, _y, "Zoey San Diego");
draw_text(_x, _y+line_sep, "Programming & Additional UI");
draw_sprite_ext(spr_itch, 0, _x, _y+line_sep*2, 0.063, 0.063, image_angle, image_blend, image_alpha)
draw_text(_x + 85, _y+line_sep*2, "soeyzandiego");
draw_sprite_ext(spr_twitter, 0, _x, _y+line_sep*3, 0.03, 0.03, image_angle, image_blend, image_alpha);
draw_text(_x + 100, _y+line_sep*3, "@soeyzandiego");

_y = 600;
draw_text(_x, _y, "Ruari Root");
draw_text(_x, _y+line_sep, "Lead Writer & Creative Head");
draw_sprite_ext(spr_itch, 0, _x, _y+line_sep*2, 0.063, 0.063, image_angle, image_blend, image_alpha)
draw_text(_x + 85, _y+line_sep*2, "rawrku");
draw_sprite_ext(spr_twitter, 0, _x, _y+line_sep*3, 0.03, 0.03, image_angle, image_blend, image_alpha);
draw_text(_x + 100, _y+line_sep*3, "@rawrkuu");

_x = camera_get_view_width(view_camera[0]) / 2 + 50;

_y = 100;
draw_text(_x, _y, "Stacey Xu");
draw_text(_x, _y+line_sep, "Character Designer, Character Artist,");
draw_text(_x, _y+line_sep*2, "& Additional Writing");
draw_sprite_ext(spr_itch, 0, _x, _y+line_sep*3, 0.063, 0.063, image_angle, image_blend, image_alpha)
draw_text(_x + 85, _y+line_sep*3, "shio_o");
draw_sprite_ext(spr_insta, 0, _x, _y+line_sep*4, 0.048, 0.048, image_angle, image_blend, image_alpha);
draw_text(_x + 100, _y+line_sep*4, "@shi0_0_");

_y = 600;
draw_text(_x, _y, "Isabel Morimoto");
draw_text(_x, _y+line_sep, "UI/UX Designer & Background Artist");
draw_sprite_ext(spr_itch, 0, _x, _y+line_sep*2, 0.063, 0.063, image_angle, image_blend, image_alpha)
draw_text(_x + 85, _y+line_sep*2, "izzypuff");
draw_sprite_ext(spr_twitter, 0, _x, _y+line_sep*3, 0.03, 0.03, image_angle, image_blend, image_alpha);
draw_text(_x + 100, _y+line_sep*3, "@izzypuff");

draw_text(camera_get_view_width(view_camera[0]) / 2 - 850, 1000, "Press ESCAPE to go back");

if (keyboard_check_pressed(vk_escape)) {
	audio_play_sound(sfx_select, 1, false);
	room_goto(rm_menu);
}