arm_all_normal();
arm_type_more = "yellow_3"
left_goto_YA = YA + 225;
right_goto_YA = YA + 290;
arm_spin_able = 1;
arm_spin_speed = 4;
a_possible = false;
arm_type = "attack"
server202_sound(gather_sound);
a_cooltime = 60;
if (camera_get_view_width(view_camera[0]) == 1024) {
	camera_set_view_size(view_camera[0], view_wport[0] * 2, view_hport[0] * 2);	
}