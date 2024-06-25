temp_YA = YA;
temp_x = x;
temp_y = y;
jumping = true;
for (var i = 15; i > 0; i--) {
	if(place_free(temp_x + lengthdir_x((i) * 20, YA - 90), temp_y + lengthdir_y((i) * 20, YA - 90))) {
		if ((temp_x + lengthdir_x((i) * 20, YA - 90) < room_width) and temp_x + lengthdir_x((i) * 20, YA - 90) > 0) {
			if ((temp_y + lengthdir_y((i) * 20, YA - 90) < room_height) and temp_y + lengthdir_y((i) * 20, YA - 90) > 0) {
					break;	
			}
		}
	}
}
jump_time = i;
jump_try = 1;
