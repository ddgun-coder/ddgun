arm_all_normal();
a_cooltime = 25;
hat_move = true;
arm_type = "attack"
switch(level)
{
	case 0:
	server78_create_instace(ssg_skill1, x + lengthdir_x(115 * big_val, YA + 90), y + lengthdir_y(115 * big_val, YA + 90));
	break;
	case 1:
	server78_create_instace(ssg_skill1, x + lengthdir_x(175 * big_val, YA + 90), y + lengthdir_y(175 * big_val, YA + 90));
	break;
	case 2:
	server78_create_instace(ssg_skill1, x + lengthdir_x(205 * big_val, YA + 90), y + lengthdir_y(205 * big_val, YA + 90));
	break;
	case 3:
	server78_create_instace(ssg_skill4, x + lengthdir_x(650 * big_val, YA + 90), y + lengthdir_y(650 * big_val, YA + 90));
	obj_telescope_view.tele_ssg = true
	view_visible[0] = false;
	view_visible[1] = true;
	view_where = 1;
	a_cooltime = 50;
	testing.big_val_time = 200;
	testing.go_to_scale = 0.5;
	break;
}