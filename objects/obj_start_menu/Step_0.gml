menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
menu_index += menu_move;

if (menu_index < 0) menu_index = buttons - 1;
if (menu_index > buttons - 1) menu_index = 0;

if (menu_index != last_selected) {
	for (i=-49; i<=55; i+=5) {
		part_particles_create(particle_effects, menu_x + i, menu_y + 5 + button_h/2 + (button_h) * menu_index, circle_effect, 2);
	}
	

	audio_play_sound(snd_menu_switch, 1, false);
}
last_selected = menu_index;
