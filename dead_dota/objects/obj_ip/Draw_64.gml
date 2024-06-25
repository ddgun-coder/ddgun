/// @description Insert description here
// You can write your code in this editor
draw_self();
if (image_index < ip_num) {
	if (global.ip_check[image_index] != noone) {
		draw_sprite(spr_ox, global.ip_check[image_index], x - 64, y);
	}
}