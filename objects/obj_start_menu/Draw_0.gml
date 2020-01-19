draw_set_font(font_title);
draw_text(menu_x, menu_y - 3*button_h, title);

var i = 0;
draw_set_font(font_main);
draw_set_halign(fa_center);

repeat(buttons) {
	draw_set_color(c_ltgray);
	
	if (menu_index == i) draw_set_color(c_black);
	draw_text(menu_x, menu_y - 2 + button_h * i, button[i]);
	i++;
}
