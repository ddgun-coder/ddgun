a_cooltime = 10;
arm_type = "attack"
arm_movement(3, -3, 10, 10);
if (!place_meeting(x + lengthdir_x(45 * big_val, YA - 90), y + lengthdir_y(45 * big_val, YA - 90), trol_skill1)) {
	server78_create_instace(trol_skill1, x + lengthdir_x(45 * big_val, YA - 90), y + lengthdir_y(45 * big_val, YA - 90));
}