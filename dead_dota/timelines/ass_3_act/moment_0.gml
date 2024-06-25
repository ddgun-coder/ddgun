arm_all_normal();
a_cooltime = 64;
terror_charge = 0;
arm_type = "attack"
left_arm_YA = 0 + 245;
right_arm_YA = 0 + 290;
foot_movement(0, 0, 3 , -14)
server78_create_instace(obj_ass_effct, x, y);
arm_movement(0, 0, 0, 17)
temp_YA = YA;
temp_x = x;
temp_y = y;
spin_scale = 2
jumping = true;
for (var i = 15; i > 0; i--) {
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
server202_sound(shep_1_sound);