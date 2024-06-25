a_cooltime = 26;
switch(level)
{
	case 2:
	x = x + lengthdir_x(205, YA + 90)
	y = y + lengthdir_y(205, YA + 90)
	YA = YA + 180
	left_foot_YA = 0
	right_foot_YA = 0
	arm_all_normal()
	arm_type = "attack"
	arm_movement(3, -3, 10, 10);
	break;
	
	case 3:
	x = x + lengthdir_x(650, YA + 90)
	y = y + lengthdir_y(650, YA + 90)
	YA = YA + 180
	left_foot_YA = 0
	right_foot_YA = 0
	arm_all_normal()
	arm_type = "attack"
	arm_movement(3, -3, 10, 10);
	break;
}