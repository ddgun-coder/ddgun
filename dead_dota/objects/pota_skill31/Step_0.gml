/// @description Insert description here
// You can write your code in this editor
if place_free(testing.x + lengthdir_x(dis, YA - 90), testing.y + lengthdir_y(dis, YA - 90)) {
	testing.x += lengthdir_x(dis, YA - 90);
	testing.y += lengthdir_y(dis, YA - 90);
}
dis -= 0.1;