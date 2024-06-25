arm_all_normal();
a_cooltime = 20;
arm_type = "attack";
arm_type_more = "go 90";
YA += 180;
server78_create_instace(nin_skill3, x, y);
for(i = 50; i > 0; i--) {
	if(place_free(x + lengthdir_x(5 * i, YA + 90), y + lengthdir_y(5 * i, YA + 90)))
	{
		x += lengthdir_x(5 * i, YA + 90);
		y += lengthdir_y(5 * i, YA + 90);
		break;
	}//앞으로 자동이동
}