arm_all_normal();
a_cooltime = 40;
arm_type = "jump"
right_arm_YA = YA + 90
left_arm_YA = YA - 90
left_foot_YA = YA - 45
right_foot_YA = YA + 45
temp_YA = YA;
temp_x = x;
temp_y = y;
right_arm_deltay = -20;
left_arm_deltay = -20;
right_foot_deltay = -20;
left_foot_deltay = -20;
server78_create_instace(shep_skill3, x, y);
jumping = true;
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