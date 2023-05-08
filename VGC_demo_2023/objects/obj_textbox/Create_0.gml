// distance from text to sprite border
padding = 40;
line_sep = 70;
line_width = (sprite_get_width(spr_tb_devon)*global.ui_scale) - padding*2 - 15;

#region //----pages----//
// stores lines of text
page[0] = "";
cur_page = 0;
page_amount = 0;
// will store the length of each line of text
page_length[0] = string_length(page[0]);
// will store which character is talking on each page
page_char[0] = noone;
#endregion

#region //----portrait----//
//portrait
cur_portrait = noone;
page_portrait[0] = noone;
// if portrait eases in or just changes 
por_easing[0] = false;
portrait_alpha = 0;
// stores the page number where the portrait was last set
last_portrait = 0;
fade_speed = 0.12;
ease_speed = 0.15;
por_y = camera_get_view_height(view_camera[0]);
cur_por_y = por_y;
ease_offset = 50;
#endregion

#region //----background----//
page_bg[0] = noone;
cur_bg = noone;
// stores page number where bg was last set
last_bg = 0;
#endregion

#region //----options----//
// options
option[0] = "";
// stores link id for options
option_link_id[0] = -1;
option_pos = 0;
option_amount = 0;
#endregion

#region //----screenshake----//
// stores screenshake signals (time and amount)
shake_signal[0] = [0, 0];
// to track if it has shaken so it only sends shake signal once
shook = false;
// stores page number where signal was last given
last_signal = 0;
#endregion

// arrow indicator for options
indicator = instance_create_layer(x, y, "Instances", obj_arrow_indicator);
indicator.depth = -100;
indicator.visible = false;

draw_char = 0;
type_speed = 0.75;
setup = false;

// to store the scene id of the scene meant to be jumped to
jump_link = "";

cur_char = noone;
create_chars();

scr_game_text("opening");

#region //----line wrapping----//
// line wrapping
char[0, 0] = "";
char_x[0, 0] = 0;
char_y[0, 0] = 0;
scr_text_defaults();
// keep track of the last space in our text (where the last word ends)
last_free_space = 0;
#endregion