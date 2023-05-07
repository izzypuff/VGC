draw_set_font(fnt_futura);

// inputs
up_key = vk_up;
down_key = vk_down;

options[0] = "Play";
options[1] = "Credits";
options[2] = "Quit";

// option position
op_pos = 0;
op_length = array_length(op_pos);

start_y = 700;
line_sep = 120;

// to type name into
input_box = instance_create_layer(630, y, "Typebox", obj_type_input);
input_box.visible = false;