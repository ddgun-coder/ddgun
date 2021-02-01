/// @description Insert description here
// You can write your code in this editor
if (alarm [0] > 10) {
	var dir = point_direction(x, y, other.x, other.y);
	x -= lengthdir_x(50, dir);
	y -= lengthdir_y(50, dir);
	alarm[0] = 10;	
}