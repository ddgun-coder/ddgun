arm_all_normal();
a_cooltime = 270
arm_type = "attack"
arm_type_more = "arm_lock4"
big_val = go_to_scale * 3 ;
jumping = true;
only_hat = true;
temp_YA = YA;
temp_x = x;
temp_y = y;
server77_equal(serve_val.only_hat, only_hat, buffer_bool);
for (var i = 20; i > 0; i--) {
	if(place_free(temp_x + lengthdir_x((i) * 30, YA - 90), temp_y + lengthdir_y((i) * 30, YA - 90))) {
		if ((temp_x + lengthdir_x((i) * 30, YA - 90) < room_width) and temp_x + lengthdir_x((i) * 30, YA - 90) > 0) {
			if ((temp_y + lengthdir_y((i) * 30, YA - 90) < room_height) and temp_y + lengthdir_y((i) * 30, YA - 90) > 0) {
				break;	
			}
		}
	}
}
jump_time = i;
jump_try = 30;