if (cid_id == global.my_cid_id) {
	x = testing.x;
	y = testing.y;
	if (charge < 90) {
	testing.extra_speed = 1;
	}
	else {
		with(testing) {
			jumping = true;
			temp_x = x;
			temp_y = y;
			var _speed = 25;
			var _max_time = 20;
			for (var i = _max_time; i > 0; i--) {
				if(place_free(temp_x + lengthdir_x((i) * _speed, YA - 90), temp_y + lengthdir_y((i) * _speed, YA - 90))) {
					if ((temp_x + lengthdir_x((i) * _speed, YA - 90) < room_width) and temp_x + lengthdir_x((i) * _speed, YA - 90) > 0) {
						if ((temp_y + lengthdir_y((i) * _speed, YA - 90) < room_height) and temp_y + lengthdir_y((i) * _speed, YA - 90) > 0) {
							break;	
						}
					}
				}
			}
			jump_time = i;
			jump_try = _speed;	
		}
		testing.a_a_cooltime = 20;
		testing.a_cooltime = 20
		testing.temp_YA = testing.YA;
		testing.arm_type_more = "temp_YA_async";
		testing.extra_speed = 1;
		if (alarm[1] == -1) {
			alarm[1] = 10;
		}
	}
	charge++;
}
else {
	x = cid_id.x;
	y = cid_id.y;
}
image_angle = cid_id.YA;
image_xscale = cid_id.big_val;
image_yscale = cid_id.big_val;
if (cid_id.sturn > 0) {
	instance_destroy();	
}