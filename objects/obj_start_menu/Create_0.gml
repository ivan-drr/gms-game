#macro menu_x room_width/2
#macro menu_y y
#macro button_h 32

title = "No Name YET";

button[0] = "New Game";
button[1] = "Load Game";
button[2] = "Options";
button[3] = "Exit";
buttons = array_length_1d(button);

menu_index = 0;
last_selected = 0;

if(!audio_is_playing(backsound)) {
	audio_play_sound(backsound, 1, true);
}

particle_effects = part_system_create();
part_system_depth(particle_effects, -1000);

circle_effect = part_type_create();
part_type_shape(circle_effect, pt_shape_circle);
part_type_size(circle_effect, 0.1, 1, -.02, 0);
part_type_color2(circle_effect, c_dkgray, c_black);
part_type_alpha3(circle_effect, .3, 0.5, 0);
part_type_blend(circle_effect, true);
part_type_life(circle_effect, 30, 30);
part_type_direction(1,0,100,2,1);
