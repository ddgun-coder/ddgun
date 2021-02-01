arm_all_normal();
arm_type = "jump"
temp_YA = YA;
temp_x = x;
temp_y = y;
jumping = true;
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
jump_time = i;
jump_try = 20;
right_arm_YA = YA
left_arm_YA = YA
left_foot_YA = YA
right_foot_YA = YA
if(normal_attack_type == spr_bigsaw) {
	spr_armr_more = spr_bigsaw;
	spr_arml_more = spr_bigsaw;
	right_arm_YA = YA - 180;
	left_arm_YA = YA - 180;
	left_arm_xscale = -1;
	right_arm_xscale = 1;
	server77_equal(serve_val.left_arm_xscale, left_arm_xscale, buffer_s8)
	server77_equal(serve_val.right_arm_xscale, right_arm_xscale, buffer_s8)
}
a_cooltime = 20;