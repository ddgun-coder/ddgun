if (room == room_out) {
	instance_destroy()
}
if (keyboard_check_pressed(vk_f1)) {
	switch_window();
}

if (windows == false) exit;

if (mouse_check_button_pressed(mb_left)) {
	var D_left = Dskill_index - 1 >= 0;
	var D_right = Dskill_index < Dskill_array_num - 1;
	var _mouse_x = mouse_x - x - camera_get_view_x(view_camera[0]);
	var _mouse_y = mouse_y - y - camera_get_view_y(view_camera[0]) + view_get_yport(0);
	var x_gap = 21;
	var dx = 120 - x_gap;
	var dy = 51;
	
	var button_dx;
	var button_dy;
	
	if (point_in_rectangle(_mouse_x, _mouse_y, level_draw_x, level_draw_y, level_draw_x + 64, level_draw_y + 32 * 4)) {
		show_level = floor((_mouse_y - level_draw_y) / 32);
		set_skill_variables();
	}
	else if (D_left) {
		button_dx = dx - arrow_xoffset;
		button_dy = dy + arrow_yoffset;
		if (point_in_rectangle(_mouse_x, _mouse_y, button_dx - 32, button_dy - 32, button_dx + 32, button_dy + 32)) {
			show_debug_message("button_left");
			Dskill_index--;
		}
	}
	else if (D_right) {
		button_dx = dx + arrow_xoffset + sprite_get_width(spr_skill_ui_type);
		button_dy = dy + arrow_yoffset;
		if (point_in_rectangle(_mouse_x, _mouse_y, button_dx - 32, button_dy - 32, button_dx + 32, button_dy + 32)) {
			show_debug_message("button_right");
			Dskill_index++;
		}
	}
}

if (cur_hat != global.hat) {
	set_skill_variables();
}	