arm_movement(0, 0, 8, 0);
left_arm_YA = 0;
a_possible = true;
a_cooltime = 10;
effect_index = effect_gun0;
spr_arml_more = spr_gun0;
server78_create_instace(gun_skill11, x + lengthdir_x(55, YA - 90), y + lengthdir_y(55, YA - 90))

for(i = 50; i > 0; i--) {
	if(place_free(x + lengthdir_x(5 * i, YA2 - 90), y + lengthdir_y(5 * i, YA2 - 90)))
	{
		x += lengthdir_x(5 * i, YA2 - 90);
		y += lengthdir_y(5 * i, YA2 - 90);
		break;
	}//앞으로 자동이동
}

if (global.hat = spr_hat71) {
    d_attack_type = spr_sangbow
}