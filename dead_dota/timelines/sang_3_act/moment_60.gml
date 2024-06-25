for(i = 50; i > 0; i--) {
	if(place_free(x + lengthdir_x(10 * i, YA2 - 90), y + lengthdir_y(10 * i, YA2 - 90)))
	{
		x += lengthdir_x(10 * i, YA2 - 90);
		y += lengthdir_y(10 * i, YA2 - 90);
		break;
	}//앞으로 자동이동
}
arm_all_normal();
face_YA = -10
hat_angle = 10 
right_arm_YA = 0 - 40
left_arm_YA = 0 - 75
left_foot_YA = 0 - 35
right_foot_YA = 0 + 25
arm_movement(0, -3,-5, 12)
foot_movement(0, 0, -10, 10)

cancle_able = false;