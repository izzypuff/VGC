// distance from text to sprite border
padding = 50;
line_sep = 10;
line_width = sprite_width - padding*2;

//stores lines of text
page[0] = "";
cur_page = 0;
page_amount = 0;
// will store the length of each line of text
page_length[0] = string_length(page[0]);
// will store which character is talking on each page
page_char[0] = noone;

draw_char = 0;
type_speed = 0.75;

setup = false;

cur_char = noone;
set_chars();

scr_text("testing", "devon");
scr_text("hello, I'm narrating", "narrator");
scr_text("its devon again", "devon");
scr_text("kljaslkdjflksadjflksdjf", "narrator");