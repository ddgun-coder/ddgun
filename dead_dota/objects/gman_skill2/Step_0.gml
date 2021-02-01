/// @description Insert description here
// You can write your code in this editor
if (state) {
	image_xscale += 0.05;
	image_yscale += 0.05;
	if (image_xscale > 2) {
		state = false;	
	}
}
else {
	image_xscale -= 0.05;
	image_yscale -= 0.05;
	if (image_xscale < 0.5) {
		state = true;	
	}
}
var dis = point_distance(x, y, testing.x, testing.y);
if (dis < 500) {
	image_angle = point_direction(x, y, testing.x, testing.y);
	var a_speed = min(4, floor((500 - dis) / 100));
	show_debug_message(a_speed);
	if place_free(testing.x + lengthdir_x(a_speed, image_angle - 90), testing.y + lengthdir_y(a_speed, image_angle - 90)) {
		testing.x += lengthdir_x(a_speed, image_angle - 90);
		testing.y += lengthdir_y(a_speed, image_angle - 90);
	}
	if place_free(testing.x - lengthdir_x(a_speed, image_angle), testing.y - lengthdir_y(a_speed, image_angle)) {
		testing.x -= lengthdir_x(a_speed, image_angle);
		testing.y -= lengthdir_y(a_speed, image_angle);
	}
}