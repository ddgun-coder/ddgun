arm_all_normal();
a_cooltime = 35;
arm_type = "jump"
right_arm_YA = 0 + 90
left_arm_YA = 0 - 90
left_foot_YA = 0 - 45
right_foot_YA = 0 + 45
temp_YA = YA;
temp_x = x;
temp_y = y;
right_foot_deltay = -10;
left_foot_deltay = -10;
jumping = true;
for (var i = 20; i > 0; i--) {
	if(place_free(temp_x + lengthdir_x((i) * 25, YA - 90), temp_y + lengthdir_y((i) * 25, YA - 90))) {
		if ((temp_x + lengthdir_x((i) * 25, YA - 90) < room_width) and temp_x + lengthdir_x((i) * 25, YA - 90) > 0) {
			if		 ((temp_y + lengthdir_y((i) * 25, YA - 90) < room_height) and temp_y + lengthdir_y((i) * 25, YA - 90) > 0) {
					break;	
			}
		}
	}
}
jump_time = i;
jump_try = 30;
all_spin = true;
spin_scale = 1.5
all_spin_limit = 360;
server78_create_instace(ski_skill2, x, y)