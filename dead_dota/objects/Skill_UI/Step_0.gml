if (room == room_out) {
	instance_destroy()
}
if (keyboard_check_pressed(vk_f1)) {
	switch_window();
}

if (windows == false) exit;

if (mouse_check_button_pressed(mb_left)) {
	var dx = mouse_x - x - camera_get_view_x(view_camera[0]);
	var dy = mouse_y - y - camera_get_view_y(view_camera[0]) + view_get_yport(0);
	if (point_in_rectangle(dx, dy, level_draw_x, level_draw_y, level_draw_x + 64, level_draw_y + 32 * 4)) {
		show_level = floor((dy - level_draw_y) / 32);
		set_skill_variables();
	}
}

if (cur_hat != global.hat) {
	set_skill_variables();
}