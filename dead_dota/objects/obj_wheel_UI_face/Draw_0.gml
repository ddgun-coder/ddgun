/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_wheel1, 0, x, y, 1, 1, 0, c_white, 1)
var draw_y = y;
with(face_button) {
	draw_y = other.y + (my_layer / (height - 2)) * 220;
}
draw_sprite_ext(spr_wheel2, 0, x, draw_y,1,50,0,c_white,1);