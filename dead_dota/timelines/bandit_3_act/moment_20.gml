for(i = 25; i > 0; i--) {
	if(place_free(x + lengthdir_x(10 * i, YA - 90), y + lengthdir_y(10 * i, YA - 90)))
	{
		x += lengthdir_x(10 * i, YA - 90);
		y += lengthdir_y(10 * i, YA - 90);
		break;
	}//앞으로 자동이동
}
arm_all_normal();
all_spin = 1;
temp_YA = YA;
spr_armr_more = spr_musa_1_skill;
right_arm_YA = YA;
left_arm_YA = YA - 90;
effect_index = effect_musa1;
all_spin_limit = 360;
server78_create_instace(musa_skill1, x + lengthdir_x(35, YA - 90), y + lengthdir_y(35, YA - 90));
a_cooltime = 18;
arm_type = "attack"