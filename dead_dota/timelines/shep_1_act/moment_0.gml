arm_all_normal();
a_cooltime = 22;
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
server78_create_instace(shep_skill1, x, y);
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
jump_try = 20;