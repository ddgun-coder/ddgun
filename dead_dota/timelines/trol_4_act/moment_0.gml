a_cooltime = 10;
arm_type = "attack"
arm_movement(3, -3, 10, 10);
if (instance_exists(trol_skill41)) {
	if (trol_skill41.cid_id == global.my_cid_id) {
		server78_create_instace(trol_skill42, x + lengthdir_x(45 * big_val, YA - 90), y + lengthdir_y(45 * big_val, YA - 90));
	}
	else {
	server78_create_instace(trol_skill41, x + lengthdir_x(45 * big_val, YA - 90), y + lengthdir_y(45 * big_val, YA - 90));
	}
}
else {
	server78_create_instace(trol_skill41, x + lengthdir_x(45 * big_val, YA - 90), y + lengthdir_y(45 * big_val, YA - 90));
}