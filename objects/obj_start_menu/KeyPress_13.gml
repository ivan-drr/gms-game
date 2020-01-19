switch(menu_index) {
	case 0:
		room_goto(game_start)
		break;
	case 1:
		room_goto(load_game_menu)
		break;
	case 2:
		room_goto(options_start_menu)
		break;
	case 3:
		game_end();
		break;
}
