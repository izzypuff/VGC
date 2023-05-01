// distance from text to sprite border
padding = 50;
line_sep = 100;
line_width = sprite_width - padding*2 - 15;

// stores lines of text
page[0] = "";
cur_page = 0;
page_amount = 0;
// will store the length of each line of text
page_length[0] = string_length(page[0]);
// will store which character is talking on each page
page_char[0] = noone;

// options
option[0] = "";
option_link_id[0] = -1;
option_pos = 0;
option_amount = 0;


draw_char = 0;
type_speed = 0.75;

setup = false;

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