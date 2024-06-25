/// @description Insert description here
// You can write your code in this editor


if (attack_time < 0) {
	image_index = 0;
	if (distance_to_object(cid_id) > 800) {
		x = cid_id.x;
		y = cid_id.y;
		idle_time = 0;
	}
	else if (distance_to_object(cid_id) > 50) {
		var move_speed = 5;
		var dir = point_direction(x, y, cid_id.x, cid_id.y);
		image_angle = dir;
		var dx = lengthdir_x(move_speed, dir);
		x += dx;
		y += lengthdir_y(move_speed, dir);
		idle_time = 0;
	}
	else {
		idle_time++;
		if (idle_time > 80)	image_index = 2;
	}
	for (var i = 0; i < 24; i++) {
		if (i == global.my_cid) continue;
		var _obj = global.cid_array[i];
		if (point_distance(x, y, _obj.x, _obj.y) > 150) continue; 
		image_angle = point_direction(x, y, _obj.x, _obj.y);
		attack_time = 40;
		image_index = 1;
		move_time = 20;
		audio_play_sound(snd_cat_hissing, 0, false);
	}
}
else {
	attack_time--;
	if (move_time > 0) {
		move_time--;	
		x += lengthdir_x(25, image_angle);
		y += lengthdir_y(25, image_angle);
	}
	else {
		image_index = 0;
	}
}