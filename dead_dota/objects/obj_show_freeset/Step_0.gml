/// @description Insert description here
// You can write your code in this editor
if (show) {
	var n = array_length(free_set_array);
	if (n == 0) exit;
	if (point_in_rectangle(mouse_x, mouse_y, draw_x, dy, draw_x + 512, dy + 64 * (n + 1))) {
		if (mouse_check_button_pressed(mb_left)) {
			var sub = floor((mouse_y - dy) / 64) - 1;
			if (0 <= sub and sub <= n) {
				obj_free_set.load_items(working_directory +"/items/" + files[sub]);
				show = false;
			}
		}
	}
}

if(hat_button_main.windows <= 0) {
	if (collision_point(mouse_x, mouse_y, id, true, false)) {
			image_blend = make_color_rgb(232,0,85);
		}
		else {
			image_blend = c_white;
		}
		visible = true

}
else {	
	visible = false
}
//마우스 올려놨을때 색 변



