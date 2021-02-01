global.money =  prt_val_get(0);
if (cycle > 0) {
	cycle -= 1
} // 손,발 순환을 위한 감소 
global.intuto = 0;
if (global.hat_show > 72) {
	show_debug_message(global.hat_show);
	scr_hat_change2(spr_hat);
}
if (cycle = 0) {
	cycle = 10;
	if (arm_type = "normal")
	{
		switch(arm_type_num) {
			case 0 :
				arm_type_num = 1
				arm_movement(0, 1, 2, -2);
				foot_movement(0, 0, -2, 2);
			break;
			case 1 :
				arm_type_num = 0
				arm_movement(0, 1, -2, 2);
				foot_movement(0, 0, 2, -2);
			break;
		}
	}
} //평소 손 바꾸기 
if (do_effect == true) {
	var ok = irandom(2);
	switch(ok) {
	case 0:
		normal_play(r_ready1);
	break;
	case 1:
		normal_play(r_ready2);
	break;
	case 2:
		normal_play(r_ready3);
	break;
	}
	do_effect = false;
	x = xstart;
	y = ystart;
}
if(place_free(x + lengthdir_x(go_to_speed, YA - 90), y + lengthdir_y(go_to_speed, YA - 90)))
	{
		x += lengthdir_x(go_to_speed, YA - 90);
		y += lengthdir_y(go_to_speed, YA - 90);
	}//앞으로 자동이동