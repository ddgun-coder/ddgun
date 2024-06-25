for(i = 25; i > 0; i--) {
	if(place_free(x + lengthdir_x(5 * i, YA - 90), y + lengthdir_y(5 * i, YA - 90)))
	{
		x += lengthdir_x(5 * i, YA - 90);
		y += lengthdir_y(5 * i, YA - 90);
		break;
	}//앞으로 자동이동
}
arm_all_normal();
a_cooltime = 10;
arm_type = "attack"
arm_movement(2, -4, 10, -10);
foot_movement(-6, 5, -6, 5);
left_arm_YA = YA + 25;
right_arm_YA = YA + 25;
left_foot_YA = YA + 110;
right_foot_YA = YA - 10
temp_YA = YA;
server78_create_instace(bam_skill4, x, y);