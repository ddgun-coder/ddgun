arm_all_normal();
arm_type = "attack"
a_cooltime = 13
server202_sound(shep_1_sound);
arm_spin_able = false;
arm_spin_speed = 0;
left_arm_YA = 0 - 25;
right_arm_YA = 0 + 25
left_foot_YA = 0 - 25
right_foot_YA = 0 + 25
spr_armr_more = spr_ski_arm1;
spr_arml_more = spr_ski_arm1;
arm_movement(7, -6, 13, 13);
foot_movement(0, 0, 0, 0);
temp_YA = YA;
temp_x = x;
temp_y = y;
right_foot_deltay = -10;
left_foot_deltay = -10;
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
jump_try = 20;