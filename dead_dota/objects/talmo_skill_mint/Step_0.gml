x += lengthdir_x(attack_speed, YA - 90);
y += lengthdir_y(attack_speed, YA - 90);
jump_time--;
if (jumping) {
	if (jump_time > 0) {
		x += lengthdir_x(jump_try, temp_YA - 90);
		y += lengthdir_y(jump_try, temp_YA - 90);
	}
}

if (image_alpha < 0.9) {
	image_alpha += 0.06
}

if (a_cooltime > 0) {
	a_cooltime--
}

if (a_cycle > 0) {
	a_cycle -= 1
} // 손 순환을 위한 감소 


if (f_cycle > 0) {
	f_cycle -= 1
} // 발 순환을 위한 감소 

	if (a_cycle = 0) {
		if (arm_type = "normal")
		{
			if (a_cooltime = 0) {
				switch(arm_type_num) {
					case 0 :
						arm_type_num = 1
						arm_movement(0, 1, 2, -2);
					break;
					case 1 :
						arm_type_num = 0
						arm_movement(0, 1, -2, 2);
					break;
				}
				a_cycle = 10;
			}
		}
		if (arm_type = "attack")
		{
			switch (arm_type_more) {
				case "ski_1" :
					switch(arm_type_num) {
						case 0 :
							arm_type_num = 0;
							arm_movement(7, -6, 13, 13);
							left_arm_YA = 0 + 35
							right_arm_YA = 0 - 35
							spr_armr_more = spr_ski_arm;
							spr_arml_more = spr_ski_arm;
							left_arm_yscale = 1;
							attack_speed = 30
							right_arm_yscale = 1;
							arm_type_num = 1;
							foot_movement(-7, 7, 0, 0);
							var ida = instance_create_depth(x, y, -100, ski_skill31);
								ida.team = team;
								ida.cid = cid;
								ida.cid_id = cid_id;
								ida.YA = YA;
							a_cycle = 20;
						break;
						case 1 :
							arm_type_num = 2;
							attack_speed = 3
							arm_movement(0, 0, 18, 0);
							left_arm_YA = 0 + 45
							right_arm_YA = 0 +	75
							spr_armr_more = spr_ski_arm1;
							spr_arml_more = spr_ski_arm;
							left_foot_YA = 0 + 55;
							right_foot_YA  = YA + 125;
							foot_movement(0, -5, 13, 0);
							a_cycle = 55;
						break;
							case 2 :
							attack_speed = 0
							spr_armr_more = spr_none;
							spr_arml_more = spr_none;
							arm_type = "normal"
							arm_type_more = "none"
							left_arm_YA = 0 ;
							right_arm_YA = 0 ;
							left_foot_YA = 0 ;
							right_foot_YA  = YA ;
							arm_movement(0, 0, 0, 0);
							foot_movement(0, 0, 0, 0);
						break;
						}
					break;
			}
		}
	} //평소 손 바꾸기 
	
	if (f_cycle = 0) {
			f_cycle = 10;
			if (foot_type = "normal")
			{
			if (a_cooltime = 0) {
				switch(foot_type_num) {
					case 0 :
						foot_type_num = 1
						foot_movement(0, 0, -2, 2);
					break;
					case 1 :
						foot_type_num = 0
						foot_movement(0, 0, 2, -2);
					break;
				}
			}
		}
	}