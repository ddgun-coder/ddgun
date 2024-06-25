var num = 1;
repeat(19) {
	var obj = asset_get_index("testing" + string(num));
	if (obj.team != global.team and point_distance(x, y, obj.x, obj.y) < 250) {
		if (obj.x > 0 and obj.y > 0) {
			YA = point_direction(x, y, obj.x, obj.y);
			x = obj.x;
			y = obj.y;
			a_cooltime = 14	;
			arm_all_normal();
			arm_type = "attack"
			arm_movement(3, -3, 10, 10);
			server78_create_instace(fighter_skill3, x, y);
			break;
		}
	}
	num++;
}

if (num > 19) {
	x = x + irandom_range(-100, 100);
	y = y + irandom_range(-100, 100);
	YA = irandom(360);
	a_cooltime = 14;
	arm_all_normal();
	arm_type = "attack"
	arm_movement(3, -3, 10, 10);
	server78_create_instace(fighter_skill3, x + lengthdir_x(22 * big_val, YA - 90), y + lengthdir_y(22 * big_val, YA - 90));
}