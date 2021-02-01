/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_halign(fa_center);
draw_set_color(c_black);
if (fish_len > 100) {
	draw_text(x, y - sprite_height / 2, "이름:" + fish_name)
	draw_set_color(c_white);
	draw_text(x + 1, y - sprite_height / 2 + 1, "이름:" + fish_name)
}
else {
	draw_text(x, y - sprite_height / 2, "이름:" + fish_name);
	draw_set_color(c_white);
	draw_text(x + 1, y - sprite_height / 2 + 1, "이름:" + fish_name);
}