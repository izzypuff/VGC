// distance from text to sprite border
padding = 50;
line_sep = 80;
line_width = (sprite_get_width(spr_tb_devon)*global.ui_scale) - padding*2 - 15;

// stores lines of text
page[0] = "";
cur_page = 0;
page_amount = 0;
// will store the length of each line of text
page_length[0] = string_length(page[0]);
// will store which character is talking on each page
page_char[0] = noone;

//portrait
cur_portrait = noone;
page_portrait[0] = noone;
portrait_alpha = 0;
// stores the page number where the portrait was last set
last_portrait = 0;
fade_speed = 0.05;

// options
option[0] = "";
// stores link id for options
option_link_id[0] = -1;
option_pos = 0;
option_amount = 0;

// arrow indicator for options
indicator = instance_create_layer(x, y, "Instances", obj_arrow_indicator);
indicator.visible = false;

draw_char = 0;
type_speed = 0.75;

setup = false;

// to store the scene id of the scene meant to be jumped to
jump_link = "";

cur_char = noone;
create_chars();

scr_game_text("opening");

// line wrapping
char[0, 0] = "";
char_x[0, 0] = 0;
char_y[0, 0] = 0;
scr_text_defaults();
// keep track of the last space in our text (where the last word ends)
last_free_space = 0;
