arm_all_normal();
arm_type = "attack"
if (timeline_loop == false) {
	timeline_loop = true;
	re = 0;
}
else {
	if (re > 4) {
		timeline_loop = false;
	}
}
switch(re) {
	case 0:
		arm_all_normal();
		a_possible = false; 
		left_arm_YA = 0 - 135;
		right_arm_YA = 0 + 135;
		spr_arml_more = spr_lebe1
		spr_armr_more = spr_lebe1
		server78_create_instace(lebe_skill1, x, y)
		arm_type = "attack"
		arm_type_more = "lebe1";
		go_to_speed = 14;
	break;
	case 1:
		arm_all_normal();
		a_cooltime = 40;
		arm_type = "attack"
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
		jump_try = i;
	break;
	case 2:
		arm_all_normal();
		server78_create_instace(yellow_skill2, x + lengthdir_x(25, YA - 90), y + lengthdir_y(25, YA - 90))
		left_arm_xscale = 1.5;
		left_arm_yscale = 2;
		right_arm_xscale = -1.5;
		right_arm_yscale = 2;
		extra_speed = 3;
		big_val = 2;
		go_to_scale = 2;
		arm_type_more = "yellow_2"
		temp_YA = YA;
		arm_type = "attack"
		cancle_able = true;
		server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
	break;
	case 3:
		a_cooltime = 40;
		for(i = 50; i > 0; i--) {
			if(place_free(x + lengthdir_x(5 * i, YA - 90), y + lengthdir_y(5 * i, YA - 90)))
			{
				x += lengthdir_x(5 * i, YA - 90);
				y += lengthdir_y(5 * i, YA - 90);
				break;
			}//앞으로 자동이동
		}
		server78_create_instace(nu_skill1, x, y);
	break;
	case 4:
		arm_all_normal();
		a_cooltime = 300;
		arm_type = "attack"
		arm_type_more = "charge"
		temp_YA = YA;
		right_foot_deltay = -10;
		left_foot_deltay = -10;
		server78_create_instace(charge_skill1, x, y);
		go_to_speed = 20;
		charge = true;
		charge_time = 30;
		if (global.hat == spr_hat27) cancle_able = true;
		server77_equal(serve_val.cancle_able, true, buffer_bool);
	break;
}