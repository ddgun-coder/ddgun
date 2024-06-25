arm_all_normal();
arm_type = "attack"
arm_type_more = "temp_YA_async";
cancle_able = true;
temp_YA = YA;
spin_able = true;
spin_scale= 1.5
go_to_speed = 31;
arm_movement(0, -3, 0, 15);
server77_equal(serve_val.cancle_able, cancle_able, buffer_bool);
if (up_skill >= 3) {
	server78_create_instace(tu_skill14, x ,y)
	up_skill = 0
	a_cooltime = 48;
}
else {
	server78_create_instace(tu_skill13, x, y);
	a_cooltime = 48;
}
	
	
/*
arm_all_normal();
a_possible = false;
up_skill = 3;
server78_create_instace(tu_skill22, x + lengthdir_x(55 * big_val, YA - 90), y + lengthdir_y(55 * big_val, YA - 90));
server78_create_instace(tu_skill23, x + lengthdir_x(55 * big_val, YA - 90), y + lengthdir_y(55 * big_val, YA - 90));
server78_create_instace(tu_skill21, x + lengthdir_x(55 * big_val, YA - 90), y + lengthdir_y(55 * big_val, YA - 90));