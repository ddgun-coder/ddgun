/// @description Insert description here
// You can write your code in this editor
if (hat_button_main.windows == 4) {
	visible = true;
	if (collision_point(mouse_x, mouse_y, id, false, false)) {
		if (mouse_check_button(mb_left)) {
			var n = face_button.height - 2;
			face_button.my_layer = floor((mouse_y - y) / 100 * n);
		}
	}
}
else {
	visible = false;	
}