/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < 8; i++) {
	var dir = i * 360 / 8 + (time_max - time) / time_max * 180;
	var len = time * 3;
	var draw_x = testing.x + lengthdir_x(len, dir);
	var draw_y = testing.y + lengthdir_y(len, dir);
	if (target == i) {
		draw_sprite(sprite_index, 8, draw_x, draw_y);
	}
	else {
		draw_sprite(sprite_index, i, draw_x, draw_y);	
	}
}