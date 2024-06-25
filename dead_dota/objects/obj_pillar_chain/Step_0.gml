/// @description Insert description here
// You can write your code in this editor

if (number == max_number - 1) {
	x = to_cid.x;
	y = to_cid.y;
}


if (linked_id != noone) {
	if (number == 0) {
		var dis = 0;	
	}
	else {
		var dis = point_distance(x, y, linked_id.x, linked_id.y) - 32;	
	}
	var dir = point_direction(x, y, linked_id.x, linked_id.y);	
	if (dis > 2) {
		x += lengthdir_x(dis / 3, dir);	
		y += lengthdir_y(dis / 3, dir);	
	}
}

if (linked_id2 != noone) {
	if (number == 0) {
		var dis = 0;	
	}
	else {
		var dis = point_distance(x, y, linked_id2.x, linked_id2.y) - 32;	
	}
	var dir = point_direction(x, y, linked_id2.x, linked_id2.y);	
	if (dis > 2) {
		x += lengthdir_x(dis / 3, dir);	
		y += lengthdir_y(dis / 3, dir);	
	}
}
