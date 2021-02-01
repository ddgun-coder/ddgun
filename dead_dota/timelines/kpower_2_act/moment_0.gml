a_cooltime = 15;
arm_type = "attack";
spr_armr_more = spr_musa_1_skill;
arm_type_more = "go 90";
for(i = 50; i > 0; i--) {
	if(place_free(x + lengthdir_x(5 * i, YA - 90), y + lengthdir_y(5 * i, YA - 90)))
	{
		x += lengthdir_x(5 * i, YA - 90);
		y += lengthdir_y(5 * i, YA - 90);
		break;
	}//앞으로 자동이동
}
YA += 180;
invisible = true;
invisible_time = 90;
server78_create_instace(kpower_skill1, x, y);