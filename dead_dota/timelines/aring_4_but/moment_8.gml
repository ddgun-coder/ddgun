right_arm_YA = 0;
left_arm_YA = 0;
left_arm_xscale = 1;
right_arm_xscale = -1;
arm_type = "jump"
temp_YA = YA;
temp_x = x;
temp_y = y;
server78_create_instace(shep_skill1, x, y);
for (var i = 15; i > 0; i--) {
	if(place_free(temp_x + lengthdir_x((i) * 20, YA - 90), temp_y + lengthdir_y((i) * 20, YA - 90))) {
		if ((temp_x + lengthdir_x((i) * 20, YA - 90) < room_width) and temp_x + lengthdir_x((i) * 20, YA - 90) > 0) {
			if ((temp_y + lengthdir_y((i) * 20, YA - 90) < room_height) and temp_y + lengthdir_y((i) * 20, YA - 90) > 0) {
					break;	
			}
		}
	}
}
jump_try = i;
jumping = true;
right_arm_YA = 0
left_arm_YA = 0
left_foot_YA = 0
right_foot_YA = 0
arm_movement(3, -3, 10, 10);
server78_create_instace(die_skill3_2, x + lengthdir_x(30 * big_val, YA - 90), y + lengthdir_y(30 * big_val, YA - 90));
server77_equal(serve_val.left_arm_xscale, left_arm_xscale, buffer_s8)
server77_equal(serve_val.right_arm_xscale, right_arm_xscale, buffer_s8)
normal_attack_type = spr_bigsaw