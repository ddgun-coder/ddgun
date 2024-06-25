/// @description Insert description here
// You can write your code in this editor
if (image_blend != c_white) {
	draw_sprite_ext(sprite_index, 2, x, y, 1, 1, image_angle, image_blend, 1);
	draw_self();
	draw_sprite_ext(sprite_index, 1, x, y, 1, 1, image_angle, image_blend, 1);
}
else {
	draw_sprite(sprite_index, 2, x, y);
	draw_self();
	draw_sprite(sprite_index, 1, x, y);
}