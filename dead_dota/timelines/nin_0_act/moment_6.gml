arm_all_normal();
arm_type = "jump"
right_arm_YA = 0 + 90
left_arm_YA = 0 - 45
left_foot_YA = 0 - 45
right_foot_YA = 0 + 45
temp_YA = YA;
temp_x = x;
temp_y = y;
right_foot_deltay = -10;
left_foot_deltay = -10;
all_spin = 1 ;
all_spin_limit = 360;
arm_move_speed = 0;
arm_spin_able = false;
arm_moveR = true;
arm_move_speed = 30;
arm_move_delta = 0 ;
arm_move_limit = 380;
for(i = 45; i > 0; i--) {
	if(place_free(x + lengthdir_x(5 * i, YA - 90), y + lengthdir_y(5 * i, YA - 90)))
	{
		x += lengthdir_x(5 * i, YA - 90);
		y += lengthdir_y(5 * i, YA - 90);
		break;
	}//앞으로 자동이동
}
;
server78_create_instace(nin_skill0, x , y);