// distance from text to sprite border
padding = 50;
line_sep = 10;
line_width = sprite_width - padding*2;

//stores lines of text
page[0] = "DK DK DONKEY KONG";
page[1] = "blah blahblablahlablablblb test";
page[2] = "WAHOOOOOOOOOOOOOOOOOOOOOOOO";
page[3] = "peaches peaches peaches peaches peaches";
cur_page = 0;
page_amount = 0;
// will store the length of each line of text
page_length[0] = string_length(page[0]);
draw_char = 0;
type_speed = 0.75;

setup = false;